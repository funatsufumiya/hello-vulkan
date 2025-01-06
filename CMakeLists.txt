cmake_minimum_required(VERSION 3.10)
project(hello-vulkan)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(Vulkan REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

# Create executable
add_executable(${PROJECT_NAME} hello_vulkan.cpp)

# Link libraries
target_link_libraries(${PROJECT_NAME} 
    PRIVATE 
        Vulkan::Vulkan
        glfw
        glm::glm
)