#include "core.h"

void core_gui_unload(){
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
}

void frame_begin(){
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
}

void frame_end(){
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    ImGui::EndFrame;
}


void core_gui_draw(){
    frame_begin();
    if (ImGui::BeginMainMenuBar())
    { 
        if (ImGui::MenuItem("shutdown")) {core_env_req_shutdown();}
        
        ImGui::EndMainMenuBar();
    }
    frame_end();
}