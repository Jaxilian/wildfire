#ifndef CORE_H
#define CORE_H
#include <vector>
#include <iostream>
#include <unordered_set>
#include <glad/gl.h>
#define GLFW_EXPOSE_NATIVE_X11
#include <GLFW/glfw3.h>
#include <GLFW/glfw3native.h>
#include <assert.h>
#include <fstream>
#include <sstream>
#define IMGUI_IMPLEMENTATION
#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"

typedef void (*fvptr)(void);
typedef void (*fiiptr)(int x, int y);

void core_env_setup();
void core_env_start();
void core_env_shutdown();
void core_env_req_shutdown();
void core_env_set_gui_cb(fvptr ptr);
void core_gui_load();
void core_gui_draw();
void core_gui_unload();

#endif