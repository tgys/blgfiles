cmake_minimum_required(VERSION 3.10)
project(blogscript)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(OPENSSL_INCLUDE_DIR $ENV{OPENSSL_INCLUDE_DIR})
set(OPENSSL_CRYPTO_LIBRARY $ENV{OPENSSL_CRYPTO_LIBRARY})
set(OPENSSL_LIB_DIR $ENV{OPENSSL_LIB_DIR})
set(OPENSSL_ROOT_DIR $ENV{OPENSSL_ROOT_DIR})

set(v8_LIB_DIRS $ENV{v8}/lib)


# set(C-ARES_LIB_DIRS $ENV{CARES}/lib)
# set(C-ARES_INCLUDE_DIRS $ENV{CARES}/include)
# set(C-ARES_LIBRARIES $ENV{CARES}/lib/libcares.so)

#set(BROTLI_LIB_DIRS $ENV{BROTLI}/lib)
#set(BROTLI_INCLUDE_DIRS $ENV{BROTLI}/include)
#set(BROTLICOMMON_LIBRARY $ENV{BROTLI}/lib/pkgconfig/libbrotlicommon.pc)
#set(BROTLIDEC_LIBRARY $ENV{BROTLI}/lib/pkgconfig/libbrotlidec.pc)
#set(BROTLIENC_LIBRARY $ENV{BROTLI}/lib/pkgconfig/libbrotlienc.pc)

set(CURL_INCLUDE_DIR $ENV{LIBCURL_PATH}/include/)

set(Boost_INCLUDE_DIR $ENV{Boost_INCLUDE_DIR})

set(OpenSSL_DIR $ENV{OPENSSL_ROOT_DIR})

find_package(Boost REQUIRED)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/)

list(APPEND CMAKE_MODULE_PATH $ENV{LIBTORRENT_DIR}/share/cmake/Modules)

#set(torrent-rasterbar "/home/tei/projects/cpp/libtorrent/cmake-build-debug/libtorrent-rasterbar.so")

set(torrent-rasterbar "${LIBTORRENT_DIR}/lib/libtorrent-rasterbar.so")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ggdb")

#set(PKG_CONFIG_EXECUTABLE "")
#set(ZLIB_INCLUDE_DIR $ENV{ZLIB}/include)
#set(ZLIB_LIBRARIES $ENV{ZLIB}/lib)

#find_package(Node REQUIRED)

find_package(PkgConfig REQUIRED)

pkg_check_modules(OPENSSL REQUIRED openssl)

#pkg_check_modules(NODE REQUIRED node)

pkg_check_modules(CARES REQUIRED libcares)

pkg_check_modules(LIBUUID REQUIRED uuid)

pkg_check_modules(JSONCPP REQUIRED jsoncpp)

#pkg_check_modules(ZLIB REQUIRED zlib)

pkg_check_modules(SQLITE3 REQUIRED sqlite3)

#pkg_check_modules(LIBBROTLI REQUIRED libbrotli)

pkg_check_modules(BROTLIDEC REQUIRED libbrotlidec)

pkg_check_modules(BROTLIENC REQUIRED libbrotlienc)

pkg_check_modules(BROTLICOMMON REQUIRED libbrotlicommon)

pkg_check_modules(v8 REQUIRED v8)

#set(ZLIB_LIBRARY ${ZLIB_LIBRARIES})
#set(ZLIB_INCLUDE_DIR ${ZLIB_INCLUDE_DIRS})
#message("zlib libraries: ")
#message(${ZLIB_LIBRARIES})

#set(ZLIB_INCLUDE_DIR $ENV{ZLIB}/include)

#find_package(BROTLI REQUIRED)

set(C-ARES_LIB_DIRS ${CARES_LIB_DIRS})
set(C-ARES_INCLUDE_DIRS ${CARES_INCLUDE_DIRS})
set(C-ARES_LIBRARIES ${CARES_LIBRARIES})

set(BROTLIDEC_LIBRARY ${BROTLIDEC_LIBRARIES})
set(BROTLIENC_LIBRARY ${BROTLIENC_LIBRARIES})
set(BROTLICOMMON_LIBRARY ${BROTLICOMMON_LIBRARIES})
set(BROTLI_INCLUDE_DIR $ENV{BROTLI}/include)
#set(BROTLI_INCLUDE_DIR ${BROTLI_INCLUDE_DIRS})

set(UUID_INCLUDE_DIR ${LIBUUID_INCLUDE_DIRS})
set(UUID_LIBRARY ${LIBUUID_LIBRARIES})

set(ZLIB_LIBRARY $ENV{ZLIB2}/lib/libz.so)
set(ZLIB_INCLUDE_DIR $ENV{ZLIB}/include)

find_package(Drogon CONFIG REQUIRED)

message(STATUS "OpenSSL used: ${OpenSSL_DIR}/OpenSSLConfig.cmake")

set(LibtorrentRasterbar_DIR $ENV{LIBTORRENT_DIR}/lib/cmake/LibtorrentRasterbar)

find_package(CURL REQUIRED)

# Include OpenSSL headers
include_directories(${OPENSSL_INCLUDE_DIRS} ${JSONCPP_INCLUDE_DIRS} ${CARES_INCLUDE_DIRS} ${BROTLI_INCLUDE_DIRS} ${NODE_INCLUDE_DIRS} ${v8_INCLUDE_DIRS})

message(STATUS "OpenSSL Libraries: ${OPENSSL_LIBRARIES}")

add_executable(blogscript blogscript.cpp)

#

target_link_libraries(blogscript PUBLIC torrent-rasterbar 
	${OPENSSL_LIBRARIES} ${CURL_LIBRARIES} Drogon::Drogon 
	${JSONCPP_LIBRARIES} 
	${LIBUUID_LIBRARIES} 
        ${NODE_LIBRARIES}
        ${v8_LIB_DIRS}/libv8.a
	)

target_compile_definitions(blogscript PRIVATE V8_COMPRESS_POINTERS=1)

