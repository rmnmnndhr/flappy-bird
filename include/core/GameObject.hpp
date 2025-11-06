#pragma once
#include <SDL3/SDL.h>
#include "../utils/Vector.hpp"

class GameObject {
public:
    virtual ~GameObject() = default;
    virtual void update(float deltaTime) = 0;
    virtual void draw(SDL_Renderer* renderer) = 0;

    Vector getPosition() const { return position; }
    void setPosition(float x, float y) { position = {x, y}; }


protected:
    Vector position = {0.0f, 0.0f};
    Vector velocity = {0.0f, 0.0f};
};
