#include "game/Background.hpp"



Background::Background(SDL_Texture *texture)
{
    this->texture = texture;
    this->setPosition(0.f, 0.f);
    float w, h;
    SDL_GetTextureSize(texture, &w, &h);
    dst = {this->getPosition().x, this->getPosition().y, w*1.5f, h*1.5f};
}

void Background::update(float)
{
}


void Background::draw(SDL_Renderer *renderer)
{
    SDL_RenderTexture(renderer, texture, nullptr, &dst);
    
}
