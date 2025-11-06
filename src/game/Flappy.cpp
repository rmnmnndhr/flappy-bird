// Flappy.cpp

#include "game/Flappy.hpp"


Flappy::Flappy(SDL_Texture* tex) : texture(tex) 
{
    setPosition(100.0f, 300.0f);

    float texW = 0, texH = 0;
    SDL_GetTextureSize(texture, &texW, &texH);


    SDL_FRect box = {100.0f, 300.0f, texW*1.5f, texH*1.5f};
    setCollisionBox(box);
}

void Flappy::update(float deltaTime) {

    float texW = 0, texH = 0;
    SDL_GetTextureSize(texture, &texW, &texH);

    this->applyForces(downforce);


    if (velocity.y > maxVerticalVelocity) velocity.y = maxVerticalVelocity;
    if (velocity.y < -maxVerticalVelocity) velocity.y = -maxVerticalVelocity;


    this->position += this->velocity * deltaTime;

    SDL_FRect box = {this->position.x, this->position.y, texW*1.5f, texH*1.5f};
    setCollisionBox(box);
}

void Flappy::draw(SDL_Renderer* renderer) {

    SDL_RenderTexture(renderer, texture, nullptr, &this->getCollisionBox());
}

void Flappy::applyForces(Vector force)
{
    
    this->velocity += force; 

}
