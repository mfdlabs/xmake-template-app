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

target("test-app")
    set_kind("binary")
    add_headerfiles("src/**.h")
    add_files("src/**.cc")
    add_includedirs(".")
	
	if is_mode("debug") then
        set_symbols("debug")
	end

    if is_mode("release") then
        set_optimize("fastest")
    end
