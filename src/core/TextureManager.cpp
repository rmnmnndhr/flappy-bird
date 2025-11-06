#include "core/TextureManager.hpp"
#include <iostream>

bool TextureManager::load(const std::string& key, const std::string& filepath, SDL_Renderer* renderer) {
    // Check if texture is already loaded
    if (textures.find(key) != textures.end()) {
        std::cerr << "[TextureManager] Texture with key '" << key << "' already loaded.\n";
        return true;
    }
    
    SDL_Texture* texture = IMG_LoadTexture(renderer, filepath.c_str());

    if (!texture) {
        std::cerr << "[TextureManager] Failed to create texture from: " << filepath
                  << " | SDL Error: " << SDL_GetError() << "\n";
        return false;
    }

    textures[key] = texture;
    std::cout << "[TextureManager] Loaded texture: " << key << " (" << filepath << ")\n";
    return true;
}

SDL_Texture* TextureManager::get(const std::string& key) const {
    auto it = textures.find(key);
    if (it != textures.end()) {
        return it->second;
    }
    std::cerr << "[TextureManager] Texture not found: " << key << "\n";
    return nullptr;
}

void TextureManager::clear() {
    for (auto& pair : textures) {
        if (pair.second) {
            SDL_DestroyTexture(pair.second);
        }
    }
    textures.clear();
    std::cout << "[TextureManager] Cleared all textures.\n";
}