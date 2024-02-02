add_rules("mode.debug", "mode.release")

add_requires("cartographer 2.0.0")

target("test")
    set_kind("binary")
    set_languages("c++17")

    add_packages("cartographer")

    add_files("main_lua.cpp")

    set_configdir("$(buildir)/$(plat)/$(arch)/$(mode)")
    add_configfiles("(configuration_files/**)", {onlycopy = true})
