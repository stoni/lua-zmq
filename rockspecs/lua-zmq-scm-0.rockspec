package = "lua-zmq"
version = "scm-0"
source = {
   url = "git://github.com/stoni/lua-zmq.git"
}
description = {
   summary = "Lua bindings to zeromq2",
   homepage = "http://github.com/stoni/lua-zmq",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   ZEROMQ = {
      header = "zmq.h",
	  library = "libzmq"
   }
}
build = {
   type = "builtin",
   modules = {
     zmq = {
       sources = {"zmq.c"},
       libraries = {"zmq"},
	   incdirs = {"$(ZEROMQ_INCDIR)"},
       libdirs = {"$(ZEROMQ_LIBDIR)"}
     }
   }
}
