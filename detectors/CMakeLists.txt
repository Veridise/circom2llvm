add_llvm_library(Detectors MODULE
    ArrayShapes.cpp
    OutputSignalUser.cpp
    UnderConstraints.cpp
    InfoCollector.cpp
    PLUGIN_TOOL
    opt
)
