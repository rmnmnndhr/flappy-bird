#include "core/Entity.hpp"

bool Entity::getIsAlive() const {
    return isAlive;
}

void Entity::destroy() {
    isAlive = false;
}

std::pair<float, float> Entity::getPosition() const {
    return position;
}

void Entity::setPosition(float x, float y) {
    position.first = x;
    position.second = y;
}

const SDL_FRect &Entity::getCollisionBox() const{
    return collision_box;
}

void Entity::setCollisionBox(const SDL_FRect& rect) {
    collision_box = rect;
}
