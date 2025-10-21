// Flappy.cpp

#include "game/Flappy.hpp"

Flappy::Flappy(SDL_Texture* tex) : texture(tex) 
{
    setPosition(100.0f, 300.0f);

    SDL_FRect box = {100.0f, 300.0f, 48.0f, 48.0f};
    setCollisionBox(box);
}

void Flappy::update(float deltaTime) {

}

void Flappy::draw(SDL_Renderer* renderer) {

    SDL_RenderTexture(renderer, texture, nullptr, &this->getCollisionBox());
}
