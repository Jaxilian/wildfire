workspace "wildfire"  

configurations {
        "Debug",
        "Release"
}

project "wildfire"
    language "C++"   
    targetdir "bin/%{cfg.buildcfg}"
    objdir "obj/%{cfg.buildcfg}"
    cppdialect "C++20"
    cdialect "C11"
    staticruntime "on"


    links { 
        "glfw"
    }

    files { 
        "src/**.h",
        "src/**.hpp",
        "src/**.c",
        "src/**.cpp",
        "ext/**.h",
        "ext/**.hpp",
        "ext/**.c",
        "ext/**.cpp"
    }

    includedirs { 
        "src/editor/math/dependencies",
        "src/editor/win",
        "src/game",
        "src",
        "ext"
    }


    filter "configurations:Debug"   
    defines { 
        "DEBUG",
        "_DEBUG"
    }
        optimize "Debug"
        symbols "On"
        kind "ConsoleApp"   


    filter "configurations:Release"      
        defines { "NDEBUG"}
            
        optimize "Full"
        symbols "Off"
        kind "ConsoleApp"   
