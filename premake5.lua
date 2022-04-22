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
        "X11",
        "GL",
        "GLU"
    }

    files { 
        "src/**.h",
        "src/**.hpp",
        "src/**.c",
        "src/**.cpp"
    }

    includedirs { 
        "src/"
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
