set(CMAKE_CXX_COMPILER "/nix/store/kp2j7yn0wzwq5piy494r54dafrh83s6s-gcc-wrapper-13.3.0/bin/g++")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "13.3.0")
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




set(CMAKE_AR "/nix/store/kp2j7yn0wzwq5piy494r54dafrh83s6s-gcc-wrapper-13.3.0/bin/ar")
set(CMAKE_CXX_COMPILER_AR "/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/bin/gcc-ar")
set(CMAKE_RANLIB "/nix/store/kp2j7yn0wzwq5piy494r54dafrh83s6s-gcc-wrapper-13.3.0/bin/ranlib")
set(CMAKE_CXX_COMPILER_RANLIB "/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/bin/gcc-ranlib")
set(CMAKE_LINKER "/nix/store/kp2j7yn0wzwq5piy494r54dafrh83s6s-gcc-wrapper-13.3.0/bin/ld")
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





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "/nix/store/z7xxy35k7620hs6fn6la5fg2lgklv72l-python3-3.12.4/include;/nix/store/nzgl64g3vmlcqjllsqclk0xw5fiz6f96-python3.12-greenlet-3.0.3/include;/nix/store/bmvx7ww7qfksjqsckmivkg3mqvjscfh8-nodejs-22.3.0/include;/nix/store/add5iqcvrriiyj8zxb1ckbq9g40ygwik-boost-1.81.0-dev/include;/nix/store/dp6821c0s4bbmmws3lc6nicz09lnjlgl-openssl-3.0.14-dev/include;/nix/store/hdqcckpi7whp0adz1lrnxw5svd0aqxwp-tesseract-5.3.4/include;/nix/store/l40hd2mjx2cbpnqnvrxmxa04s61hkck2-opencv-4.9.0/include;/nix/store/wafdn6rqbr0236spj9pppd3czy4wfjg2-curl-8.8.0-dev/include;/nix/store/0rcay5lcvmmacbcyfhsgdb1kw2pnb0lf-brotli-1.1.0-dev/include;/nix/store/1sswvcn3mpbhf1qb5jyg9d9nmy0ih52b-gsasl-2.2.1/include;/nix/store/vjqrzhy6i4cm62ilzgv9acynrk37avqa-libkrb5-1.21.2-dev/include;/nix/store/5sknb1zsdwxg07mp789iql86am4byn7x-nghttp2-1.61.0-dev/include;/nix/store/l8nafkagh87vn7hdyk20q31jxj1zrzlh-libidn2-2.3.7-dev/include;/nix/store/ndbn5a7w7n0yzgwxxnc9w1g6ycigm291-openldap-2.6.7-dev/include;/nix/store/fldxafbwkznbxik2jknbn0pni5w97vf9-libpsl-0.21.5-dev/include;/nix/store/bcn63mwr01mn8rfn6677h0a26ywr9k9b-rtmpdump-unstable-2021-02-19-dev/include;/nix/store/c8j6z63459gy7s7fjjvdj918hw0nki39-zlib-1.3.1-dev/include;/nix/store/bs5dw65hrvvwpw5mqcnmwb9qy9m9f52z-libssh2-1.11.0-dev/include;/nix/store/v56i3cdv3zr6zljygs90gwywirhbl37n-zstd-1.5.6-dev/include;/nix/store/gc8p3glja8vansp392ajw3c0mnhkb3xf-libtorrent-rasterbar-2.0.10-dev/include;/nix/store/jpmgfkwn8ihnalb76wpcs40ny3ib17yf-httplib-0.16.0/include;/nix/store/ifpwfwp0pr7izkmc9hfma3n0871vc58x-nlohmann_json-3.11.3/include;/nix/store/w2bs7wmxkbf3h0df6y03dz1yx3b6srgp-drogon-1.9.4/include;/nix/store/cn6cir7419y5805dcdxf3kbimjgbsn0l-jsoncpp-1.9.5-dev/include;/nix/store/wvlkl87ihw84cqslqfpd94va85sdis1z-libossp-uuid-1.6.2/include;/nix/store/ycm43zv8ap0wxwd9ng76h9gcl54ahj1l-c-ares-1.27.0-dev/include;/nix/store/9xlfkwlg6qas2rkg8qgl6f9ja2qdzgih-sqlite-3.45.3-dev/include;/nix/store/2rl0sapflqhilgich0m0fjjk8c40iw5s-util-linux-minimal-2.39.4-dev/include;/nix/store/4byb3z9k7ql71p9q55hazqz0358ynixz-websocket++-0.8.2/include;/nix/store/0iwmhy71p4503x48as1xgv9b8dx6p7gp-v8-9.7.106.18/include;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/include/c++/13.3.0;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/include/c++/13.3.0/x86_64-unknown-linux-gnu;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/include/c++/13.3.0/backward;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0/include;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/include;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0/include-fixed;/nix/store/09lv9r3dx6ql0lzpdv8w2b1r6b358481-glibc-2.39-52-dev/include")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "/nix/store/z7xxy35k7620hs6fn6la5fg2lgklv72l-python3-3.12.4/lib;/nix/store/r7jmjyy5wxw1p1npcpwab7496sqagrh4-boost-1.81.0/lib;/nix/store/jv2p6cmx23ihj5y4r98wnn2nmv4qhfh5-openssl-3.0.14/lib;/nix/store/hdqcckpi7whp0adz1lrnxw5svd0aqxwp-tesseract-5.3.4/lib;/nix/store/l40hd2mjx2cbpnqnvrxmxa04s61hkck2-opencv-4.9.0/lib;/nix/store/db139dpnchza6i3mw1nhscwh6vap9n1j-brotli-1.1.0-lib/lib;/nix/store/1sswvcn3mpbhf1qb5jyg9d9nmy0ih52b-gsasl-2.2.1/lib;/nix/store/qwirfr2adh1173hyw34vjygnma4w8azd-libkrb5-1.21.2/lib;/nix/store/ljcl4myy1yb9c8a5gsflpid473c2vdqy-nghttp2-1.61.0-lib/lib;/nix/store/pq755f1pxaas9q7666wzdzxidcvf9frg-libidn2-2.3.7/lib;/nix/store/q9wv0apki0sbfx2l5z6c5fdvn155p0yb-openldap-2.6.7/lib;/nix/store/0n2d54ql7fw485p1181sz6v6j287p4fq-libpsl-0.21.5/lib;/nix/store/rc18a8k50zmrif61250sfidkqvlg41ln-zlib-1.3.1/lib;/nix/store/jmf33mzmfs96kc2gb0dspl6mjp0dx9yn-rtmpdump-unstable-2021-02-19/lib;/nix/store/qpxn8irb7gdlnmm846q27mwva9h99lci-libssh2-1.11.0/lib;/nix/store/c8wv624pj273mx39q1qb7ciqvrfm64d0-zstd-1.5.6/lib;/nix/store/1xs9n4fjcniwhc9lys1n00pygwdyk8kw-curl-8.8.0/lib;/nix/store/s86ck2s23zw7v77ij050g98wgsb1jmr5-libtorrent-rasterbar-2.0.10/lib;/nix/store/w2bs7wmxkbf3h0df6y03dz1yx3b6srgp-drogon-1.9.4/lib;/nix/store/n6dg6493j9chwgfp1r5wlrwkh7504vnp-jsoncpp-1.9.5/lib;/nix/store/wvlkl87ihw84cqslqfpd94va85sdis1z-libossp-uuid-1.6.2/lib;/nix/store/3icibqpdp18aw9kzybwbbfsdvw4mcixg-c-ares-1.27.0/lib;/nix/store/73s9ldg013iipng6pkq3ly4s5b1ys3g8-sqlite-3.45.3/lib;/nix/store/g5dj80arfsy8lvkda22dgkcqmyqa126w-util-linux-minimal-2.39.4-lib/lib;/nix/store/0iwmhy71p4503x48as1xgv9b8dx6p7gp-v8-9.7.106.18/lib;/nix/store/m71p7f0nymb19yn1dascklyya2i96jfw-glibc-2.39-52/lib;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0;/nix/store/c6r62m84hywf4i6qq1h28f13zv38yqyp-gcc-13.3.0-lib/lib;/nix/store/kp2j7yn0wzwq5piy494r54dafrh83s6s-gcc-wrapper-13.3.0/bin;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/lib64;/nix/store/3s3rjkl3mx05wp0lmxgwkaqhbz9sy6kk-gcc-13.3.0/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
