project "hidapi"
  kind "StaticLib"
  language "C"

  targetdir ("build/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("build/obj/" .. outputdir .. "/%{prj.name}")

  files 
  {
    "hidapi/hidapi.h"
  }
  
  systemversion "latest"
  staticruntime "On"

  filter "system:windows"

    files 
    {
      "windows/hid.c"
    }
  
  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release"
    runtime "Release"
    optimize "on"
