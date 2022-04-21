#include "core.h"

int main(){
    core_env_setup();
    core_gui_load();
    core_env_set_gui_cb(core_gui_draw);
    core_env_start();
    core_gui_unload();
    core_env_shutdown();
} 
