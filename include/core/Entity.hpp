#pragma once
#include <SDL3/SDL.h>
#include <iostream>
#include "GameObject.hpp"

class Entity : public GameObject {
public:
    bool getIsAlive() const { return isAlive; }
    void destroy() { isAlive = false; }


    const SDL_FRect& getCollisionBox() const { return collision_box; }
    void setCollisionBox(const SDL_FRect& rect) { collision_box = rect; }

protected:
    bool isAlive = true;

    SDL_FRect collision_box = {0.0f, 0.0f, 0.0f, 0.0f};
};
