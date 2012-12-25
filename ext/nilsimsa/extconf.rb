#!/usr/bin/env ruby
require 'mkmf'
require 'rbconfig'

#if RUBY_PLATFORM.include?('darwin')
#  CONFIG["DLEXT"] = "bundle"
#  CONFIG["LDSHARED"] = "$(CC) -shared"
#  CONFIG["CCDLFLAGS"] = " -fPIC"
#else
#  if CONFIG['CC'] == 'gcc'
#    CONFIG['CC'] = 'gcc -Wall '
#  end
#end
dir_config("nilsimsa")
have_header('ruby.h') or missing('ruby.h')

create_makefile('nilsimsa_native')
