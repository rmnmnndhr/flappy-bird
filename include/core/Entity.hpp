#pragma once
#include <SDL3/SDL.h>
#include <iostream>

class Entity {
public:
    virtual ~Entity() = default;

    virtual void update(float deltaTime) = 0;
    virtual void draw(SDL_Renderer* renderer) = 0;

    // Getters and setters
    bool getIsAlive() const;
    void destroy();

    std::pair<float, float> getPosition() const;
    void setPosition(float x, float y);

    const SDL_FRect &getCollisionBox() const;
    void setCollisionBox(const SDL_FRect& rect);

protected:
    bool isAlive = true;
    std::pair<float, float> position = {0.0f, 0.0f};
    SDL_FRect collision_box = {0.0f, 0.0f, 0.0f, 0.0f};
};