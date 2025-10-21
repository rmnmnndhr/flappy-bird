cmake_minimum_required(VERSION 3.16)
project(app)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


# Add SDL3 and SDL_Image
add_subdirectory(dependencies/SDL3 EXCLUDE_FROM_ALL)
add_subdirectory(dependencies/SDL3_image EXCLUDE_FROM_ALL)


# ---- Source Files ----
file(GLOB_RECURSE SRC_FILES
    ${CMAKE_SOURCE_DIR}/src/*.cpp
)

# ---- Create Executable ----
add_executable(${PROJECT_NAME}
    ${SRC_FILES}
)

# ---- Include Directories ----
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)


# ---- Link Libraries ----
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        SDL3::SDL3
        SDL3_image::SDL3_image
)

# ---- Copy assets ----
set(ASSETS_SRC_DIR "${CMAKE_SOURCE_DIR}/assets")
set(ASSETS_DST_DIR "${CMAKE_BINARY_DIR}/assets")

add_custom_command(
    TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
            ${ASSETS_SRC_DIR} ${ASSETS_DST_DIR}
    COMMENT "Copying assets to build directory"
)
