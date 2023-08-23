# 引入该目录下的.cmake文件
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include_directories(${CMAKE_BINARY_DIR}/devel/include) # 引用ros生成的msg header

# eigen 3
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIRS})

# glog
find_package(Glog REQUIRED)
include_directories(${Glog_INCLUDE_DIRS})

# opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Pangolin
find_package(Pangolin REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})

# g2o 使用Thirdparty中的
include_directories(${PROJECT_SOURCE_DIR}/Thirdparty/g2o/)
set(g2o_libs
    ${PROJECT_SOURCE_DIR}/Thirdparty/g2o/lib/libg2o.so)

# DBoW2 in Thirdparty
include_directories(${PROJECT_SOURCE_DIR}/Thirdparty/DBoW2/)
set(dbow2_libs
    ${PROJECT_SOURCE_DIR}/Thirdparty/DBoW2/lib/libDBoW2.so)
