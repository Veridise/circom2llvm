use std::collections::{HashMap, HashSet};

use inkwell::{
    context::Context,
    types::{BasicTypeEnum, IntType},
    values::IntValue,
};

use crate::{
    expression_static::Instantiation, scope_information::ScopeInformation,
    template::TemplateInformation,
};

pub struct InstantiationManager {
    instantiations: HashSet<(String, Instantiation)>,
}

impl InstantiationManager {
    pub fn get_instantiations(&self, templ_name: &String) -> Vec<&Instantiation> {
        let mut res = Vec::new();
        for (name, e) in &self.instantiations {
            if name == templ_name {
                res.push(e)
            }
        }
        res
    }

    pub fn set_instantiations(&mut self, templ_name: &String, v: &Instantiation) {
        self.instantiations.insert((templ_name.clone(), v.clone()));
    }
}

pub fn init_instantiation_manager() -> InstantiationManager {
    InstantiationManager {
        instantiations: HashSet::new(),
    }
}

pub struct GlobalInformation<'ctx> {
    pub arraysize: u32,
    pub is_instantiation: bool,

    pub val_ty: IntType<'ctx>,
    pub const_p: IntValue<'ctx>,
    pub const_zero: IntValue<'ctx>,
    pub context: &'ctx Context,

    // Global template information
    name2template_infos: HashMap<String, TemplateInformation>,

    // Global scope information
    name2scope_infos: HashMap<String, ScopeInformation<'ctx>>,

    fn_scope_names: Vec<String>,
    templ_scope_names: Vec<String>,
}

impl<'ctx> GlobalInformation<'ctx> {
    pub fn get_template_info(&self, templ_name: &String) -> &TemplateInformation {
        return self.name2template_infos.get(templ_name).unwrap();
    }

    pub fn set_template_info(&mut self, templ_name: &String, v: TemplateInformation) {
        self.name2template_infos.insert(templ_name.clone(), v);
    }

    pub fn get_scope_info(&self, scope_name: &String) -> &ScopeInformation<'ctx> {
        return self.name2scope_infos.get(scope_name).unwrap();
    }

    pub fn set_scope_info(&mut self, v: &ScopeInformation<'ctx>) {
        let scope_name = v.get_name();
        if v.is_template {
            self.templ_scope_names.push(scope_name.clone());
        } else {
            self.fn_scope_names.push(scope_name.clone());
        }
        self.name2scope_infos.insert(scope_name.clone(), v.clone());
    }

    pub fn get_fn_scope_infos(&self) -> Vec<&ScopeInformation<'ctx>> {
        let mut res = Vec::new();
        for s in &self.fn_scope_names {
            res.push(self.get_scope_info(s))
        }
        res
    }

    pub fn get_templ_scope_infos(&self) -> Vec<(&ScopeInformation<'ctx>, &TemplateInformation)> {
        let mut res = Vec::new();
        for s in &self.templ_scope_names {
            res.push((self.get_scope_info(s), self.get_template_info(s)))
        }
        res
    }

    pub fn get_scope_ret_ty(&self, scope_info_name: &String) -> BasicTypeEnum<'ctx> {
        let scope_ret_ty = self.get_scope_info(scope_info_name).get_ret_ty();
        scope_ret_ty
    }
}

pub fn init_env<'ctx>(
    context: &'ctx Context,
    arraysize: u32,
    is_instantiation: bool,
) -> GlobalInformation<'ctx> {
    let val_ty = context.i128_type();
    let const_p = val_ty.const_int(18446744073709551557, false);
    let const_zero = val_ty.const_zero();
    return GlobalInformation {
        arraysize,
        is_instantiation,

        val_ty,
        const_p,
        const_zero,
        context,
        name2template_infos: HashMap::new(),
        name2scope_infos: HashMap::new(),
        fn_scope_names: Vec::new(),
        templ_scope_names: Vec::new(),
    };
}
