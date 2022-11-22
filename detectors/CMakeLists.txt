add_llvm_library(Detectors MODULE
    OutputSignalUser.cpp
    UnderConstraints.cpp
    InfoCollector.cpp
    PLUGIN_TOOL
    opt
)
