#include "game/Base.hpp"

Base::Base(SDL_Texture *texture)
{
    this->texture = texture;
    
    
    SDL_GetTextureSize(texture, &width, &height);
    this->setPosition(0.f, 600.f);

    dst1 = {this->getPosition().x, this->getPosition().y, width*1.5f, height*1.5f};

    dst2 = {this->getPosition().x + width*1.5f, this->getPosition().y, width*1.5f, height*1.5f};
}

void Base::update(float deltaTime)
{
    dst1.x -= 200.f * deltaTime;
    dst2.x -= 200.f * deltaTime;

    // Wrap around
    if (dst1.x + dst1.w <= 0.f)
    dst1.x = dst2.x + dst2.w;

    if (dst2.x + dst2.w <= 0.f)
        dst2.x = dst1.x + dst1.w;
}


void Base::draw(SDL_Renderer *renderer)
{
    SDL_RenderTexture(renderer, texture, nullptr, &dst1);
    SDL_RenderTexture(renderer, texture, nullptr, &dst2);
}
