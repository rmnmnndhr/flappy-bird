#include "core/InputManager.hpp"
#include <cstring>

InputManager& InputManager::GetInstance() 
{
    static InputManager instance;
    return instance;
}

void InputManager::Update() 
{
    int numKeys;
    currentKeyStates = SDL_GetKeyboardState(&numKeys);

    if (previousKeyStates.size() != (size_t)numKeys) 
    {
        previousKeyStates.resize(numKeys);
    }

    for (int i = 0; i < numKeys; ++i) 
    {
        previousKeyStates[i] = currentKeyStates[i];
    }


    previousMouseButtons = currentMouseButtons;
    currentMouseButtons = SDL_GetMouseState(&mouseX, &mouseY);


    SDL_PumpEvents();
}

bool InputManager::IsKeyDown(SDL_Scancode key) const 
{
    return currentKeyStates[key];
}

bool InputManager::IsKeyPressed(SDL_Scancode key) const 
{
    return currentKeyStates[key] && !previousKeyStates[key];
}

bool InputManager::IsKeyReleased(SDL_Scancode key) const 
{
    return !currentKeyStates[key] && previousKeyStates[key];
}


bool InputManager::IsMouseButtonDown(Uint8 button) const 
{
    return currentMouseButtons & SDL_BUTTON_MASK(button);
}

bool InputManager::IsMouseButtonPressed(Uint8 button) const 
{
    return (currentMouseButtons & SDL_BUTTON_MASK(button)) && !(previousMouseButtons & SDL_BUTTON_MASK(button));
}

bool InputManager::IsMouseButtonReleased(Uint8 button) const 
{
    return !(currentMouseButtons & SDL_BUTTON_MASK(button)) && (previousMouseButtons & SDL_BUTTON_MASK(button));
}

void InputManager::GetMousePosition(int& x, int& y) const 
{
    x = mouseX;
    y = mouseY;
}