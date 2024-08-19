set(CMAKE_CXX_COMPILER "/nix/store/xq8920m5mbd83vdlydwli7qsh67gfm5v-gcc-wrapper-13.2.0/bin/g++")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "13.2.0")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "17")
set(CMAKE_CXX_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates;cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates;cxx_std_17;cxx_std_20;cxx_std_23")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_alias_templates;cxx_alignas;cxx_alignof;cxx_attributes;cxx_auto_type;cxx_constexpr;cxx_decltype;cxx_decltype_incomplete_return_types;cxx_default_function_template_args;cxx_defaulted_functions;cxx_defaulted_move_initializers;cxx_delegating_constructors;cxx_deleted_functions;cxx_enum_forward_declarations;cxx_explicit_conversions;cxx_extended_friend_declarations;cxx_extern_templates;cxx_final;cxx_func_identifier;cxx_generalized_initializers;cxx_inheriting_constructors;cxx_inline_namespaces;cxx_lambdas;cxx_local_type_template_args;cxx_long_long_type;cxx_noexcept;cxx_nonstatic_member_init;cxx_nullptr;cxx_override;cxx_range_for;cxx_raw_string_literals;cxx_reference_qualified_functions;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_thread_local;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_unrestricted_unions;cxx_user_literals;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "cxx_std_14;cxx_aggregate_default_initializers;cxx_attribute_deprecated;cxx_binary_literals;cxx_contextual_conversions;cxx_decltype_auto;cxx_digit_separators;cxx_generic_lambdas;cxx_lambda_init_captures;cxx_relaxed_constexpr;cxx_return_type_deduction;cxx_variable_templates")
set(CMAKE_CXX17_COMPILE_FEATURES "cxx_std_17")
set(CMAKE_CXX20_COMPILE_FEATURES "cxx_std_20")
set(CMAKE_CXX23_COMPILE_FEATURES "cxx_std_23")

set(CMAKE_CXX_PLATFORM_ID "Linux")
set(CMAKE_CXX_SIMULATE_ID "")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "GNU")
set(CMAKE_CXX_SIMULATE_VERSION "")




set(CMAKE_AR "/nix/store/xq8920m5mbd83vdlydwli7qsh67gfm5v-gcc-wrapper-13.2.0/bin/ar")
set(CMAKE_CXX_COMPILER_AR "/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/bin/gcc-ar")
set(CMAKE_RANLIB "/nix/store/xq8920m5mbd83vdlydwli7qsh67gfm5v-gcc-wrapper-13.2.0/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/bin/gcc-ranlib")
set(CMAKE_LINKER "/nix/store/xq8920m5mbd83vdlydwli7qsh67gfm5v-gcc-wrapper-13.2.0/bin/ld")
set(CMAKE_MT "")
set(CMAKE_TAPI "CMAKE_TAPI-NOTFOUND")
set(CMAKE_COMPILER_IS_GNUCXX 1)
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP;ixx;cppm;ccm;cxxm;c++m)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)
set(CMAKE_CXX_LINKER_DEPFILE_SUPPORTED TRUE)

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "8")
set(CMAKE_CXX_COMPILER_ABI "ELF")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/nix/store/asiphbpiy2gmidfm3xbwcikayhs66289-python3-3.11.7/include;/nix/store/f5nrc42s6g7rqhwvx8d22v4qkz7a4ymj-protobuf-21.12/include;/nix/store/31j86ai6l83ww05c0psi6pxxyhr50a7l-abseil-cpp-20210324.2/include;/nix/store/py27w5vbkq5b7cdv8llx4r405zz3czr8-python3.11-greenlet-3.0.1/include;/nix/store/xpxz880b33kilbw5lccvrqjk40i05ykp-abseil-cpp-20230125.3/include;/nix/store/b8cn6q3y3p7f8iyiip73sip461h5q84w-protobuf-21.12/include;/nix/store/51j3vqr6hj3alayss8vdmnrvv0i12l5c-boost-1.81.0-dev/include;/nix/store/ca8y9b2x5fgyz5p6kvzbsajzz16vr3na-openssl-3.0.12-dev/include;/nix/store/g0n4hcqj3a02qhb35z5vcvc33gbhk37h-tesseract-5.3.3/include;/nix/store/kp9bffizm361g312hl02w7087y1wh9ir-opencv-4.7.0/include;/nix/store/gp9sg9wwdwwyl30zi400rif89vvr8530-openblas-0.3.25-dev/include;/nix/store/0fhd68y4pjqa98101k520r2f68nzz0rx-curl-8.4.0-dev/include;/nix/store/5ka10wrarmj2x2ph1p1fcfslgh4rnm73-brotli-1.1.0-dev/include;/nix/store/4b3hgpc7kkkzbayyskk65vvsqg385qpi-gsasl-2.2.1/include;/nix/store/ks868qjl5nwdw4yqpbm8s0imw8dllhxh-libkrb5-1.21.2-dev/include;/nix/store/pn5f0ssg4z6b8jqajvcv0z59kpswx4rx-nghttp2-1.57.0-dev/include;/nix/store/5q3mr3ms8812ydz5vmpk0nixmjijp174-libidn2-2.3.4-dev/include;/nix/store/d9kxm79g82rwxhmcrri5khp2zf7i85lj-openldap-2.6.6-dev/include;/nix/store/ksjlgl628czmiwg6i7pj2pvk9w2bksl0-libpsl-0.21.2/include;/nix/store/bkij4ypddm5l54vbgv7hnb7sgvzvzvpn-rtmpdump-unstable-2021-02-19-dev/include;/nix/store/1hjv10489fm00lckiicwsv3nlcm07njy-zlib-1.3-dev/include;/nix/store/q651103nr859i3rqz7lifi9g6vaz52jb-libssh2-1.11.0-dev/include;/nix/store/9lirj27ki30f00n57gfk4sp3y6dzyk9m-zstd-1.5.5-dev/include;/nix/store/jrwnffc50kddhdspsy0rxd5cfhsfyr8i-libtorrent-rasterbar-2.0.9-dev/include;/nix/store/dxdcj5i1ra7m36a3yg29y36dpdzldmc8-httplib-0.14.3/include;/nix/store/3fnzzp7zslkcrvd2yqv3v00p4kash932-nlohmann_json-3.11.3/include;/nix/store/z9r2phfaqbyl0ixp2ss5y20xdrrn6lsv-drogon-1.9.1/include;/nix/store/4fcnpwyzw1ylfkxznf315wab80dnkx94-jsoncpp-1.9.5-dev/include;/nix/store/268x93wn0v4mg031c967556mxkf0637c-libossp-uuid-1.6.2/include;/nix/store/q50cz31mj7lj4w1afn0fb37akqp96z6y-c-ares-1.19.1-dev/include;/nix/store/lp7grbnb4fvfnjvl6fikva1wmhn9cdnb-sqlite-3.44.2-dev/include;/nix/store/ijcgjnwxi5prw3s88aw5iz8i0iyl1j9r-util-linux-minimal-2.39.3-dev/include;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/include/c++/13.2.0;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/include/c++/13.2.0/x86_64-unknown-linux-gnu;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/include/c++/13.2.0/backward;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/lib/gcc/x86_64-unknown-linux-gnu/13.2.0/include;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/include;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/lib/gcc/x86_64-unknown-linux-gnu/13.2.0/include-fixed;/nix/store/68qbq5jzwljpl0w6i1qj2l66k129l0ii-glibc-2.38-27-dev/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/nix/store/asiphbpiy2gmidfm3xbwcikayhs66289-python3-3.11.7/lib;/nix/store/f5nrc42s6g7rqhwvx8d22v4qkz7a4ymj-protobuf-21.12/lib;/nix/store/31j86ai6l83ww05c0psi6pxxyhr50a7l-abseil-cpp-20210324.2/lib;/nix/store/xpxz880b33kilbw5lccvrqjk40i05ykp-abseil-cpp-20230125.3/lib;/nix/store/b8cn6q3y3p7f8iyiip73sip461h5q84w-protobuf-21.12/lib;/nix/store/cy9wck67j6q8cgiwbhzl98xcg6pdy50k-boost-1.81.0/lib;/nix/store/l65pk85mh54jd7ixyf2qkq7gw0rsczky-openssl-3.0.12/lib;/nix/store/g0n4hcqj3a02qhb35z5vcvc33gbhk37h-tesseract-5.3.3/lib;/nix/store/kp9bffizm361g312hl02w7087y1wh9ir-opencv-4.7.0/lib;/nix/store/nvak5j3k0npz9bjkrlqljk1nqqk138kp-openblas-0.3.25/lib;/nix/store/gs82nfl7l9ps9wn91sq1xylk7i0ad1kw-brotli-1.1.0-lib/lib;/nix/store/4b3hgpc7kkkzbayyskk65vvsqg385qpi-gsasl-2.2.1/lib;/nix/store/ynac0qi3qnpb35p72may7vb3697bapad-libkrb5-1.21.2/lib;/nix/store/8s46hv8a8xfwagvw19x75jfm6p2lf1sh-nghttp2-1.57.0-lib/lib;/nix/store/m59xdgkgnjbk8kk6k6vbxmqnf82mk9s0-libidn2-2.3.4/lib;/nix/store/g1mxqlqc4qzxbfv608hc91fnqk40nwzh-openldap-2.6.6/lib;/nix/store/ksjlgl628czmiwg6i7pj2pvk9w2bksl0-libpsl-0.21.2/lib;/nix/store/mrzfvc2gjy2mia0k4vrb95f2iff6xcxm-zlib-1.3/lib;/nix/store/7br9x4dp7shaan1f81zsy3lnhrwgpd23-rtmpdump-unstable-2021-02-19/lib;/nix/store/d8v7rra118kwlkv82f5qf7ihvhfr6fxr-libssh2-1.11.0/lib;/nix/store/5ycxpifq1n1rs6dzhrmgbq7b862mybpp-zstd-1.5.5/lib;/nix/store/c7xhlyil6hh7wmp5l13zrbl6wgn6fili-curl-8.4.0/lib;/nix/store/m9dg5fsvf6zn3c24hqa00l06gyq1kmc9-libtorrent-rasterbar-2.0.9/lib;/nix/store/z9r2phfaqbyl0ixp2ss5y20xdrrn6lsv-drogon-1.9.1/lib;/nix/store/3h8k4sj7qc5s9rmy9jjdc1c4szrddv2z-jsoncpp-1.9.5/lib;/nix/store/268x93wn0v4mg031c967556mxkf0637c-libossp-uuid-1.6.2/lib;/nix/store/9p95w6nbgdshih8rq4p80hxkrr6ww0kp-c-ares-1.19.1/lib;/nix/store/izgv5wkimsmfigak4xkwvs5bjnjrlf3h-sqlite-3.44.2/lib;/nix/store/5iq3f1g321si8d68fr5vncavkv07jr80-util-linux-minimal-2.39.3-lib/lib;/nix/store/p3jshbwxiwifm1py0yq544fmdyy98j8a-glibc-2.38-27/lib;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/lib/gcc/x86_64-unknown-linux-gnu/13.2.0;/nix/store/4zp05qkzh9s3c3k7pp9d36vhiz3x8h9l-gcc-13.2.0-lib/lib;/nix/store/xq8920m5mbd83vdlydwli7qsh67gfm5v-gcc-wrapper-13.2.0/bin;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/lib64;/nix/store/s2094dggqjwpd54c08hvkwlv2wszdr5x-gcc-13.2.0/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
