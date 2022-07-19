add_rules("mode.debug", "mode.release")

set_languages("cxx20")

includes("src")

task("bundle")
    set_menu {
        usage = "xmake bundle",
        description = "Create Zip bundle from binaries",
        options = {}
    }
    on_run(function ()
        import("scripts.bundle")
        bundle()
    end)
