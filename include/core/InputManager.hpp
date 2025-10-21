#pragma once
#include <SDL3/SDL.h>
#include <vector>

class InputManager 
{
private:
    const bool* currentKeyStates = nullptr;
    std::vector<bool> previousKeyStates;


    Uint32 currentMouseButtons = 0;
    Uint32 previousMouseButtons = 0;
    float mouseX = 0.f, mouseY = 0.f;

public:
    static InputManager& GetInstance();

    void Update(); 

    //Keyboard
    bool IsKeyDown(SDL_Scancode key) const;
    bool IsKeyPressed(SDL_Scancode key) const;
    bool IsKeyReleased(SDL_Scancode key) const;

    //mouse
    bool IsMouseButtonDown(Uint8 button) const;
    bool IsMouseButtonPressed(Uint8 button) const;
    bool IsMouseButtonReleased(Uint8 button) const;
    void GetMousePosition(int& x, int& y) const;


    InputManager() = default;
    ~InputManager() = default;
    InputManager(const InputManager&) = delete;
    InputManager& operator=(const InputManager&) = delete;
};