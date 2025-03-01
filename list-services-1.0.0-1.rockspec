package = "list-services"
version = "1.0.0-1"
source = {
   url = "git://github.com/rustyjux/kong-list-services",
   tag = "1.0.0"
}
description = {
   summary = "A Kong plugin to list services",
   detailed = [[
      A Kong plugin that provides functionality to list services.
   ]],
   homepage = "http://github.com/rustyjux/kong-list-services",
   license = "Apache 2.0"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.list-services.handler"] = "src/handler.lua",
      ["kong.plugins.list-services.schema"] = "src/schema.lua"
   }
} 