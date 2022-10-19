-- Allow reloading when sourced
local load = function(module)
  package.loaded[module] = nil
  require(module)
end

load('my.keymaps')
load('my.options')
load('my.theme')
load('my.commands')
load('my.autocommands')
load('my.lsp')

-- Plugins may have unexpected side effects if loaded / unloaded
require "my.plugins"

local system = vim.loop.os_uname().sysname

local status_ok, _ = pcall(vim.cmd, "System " .. system .. " setup triggered...")
if not status_ok then
  return
end

if system == "Linux" then
  -- add linux spefic settings here
        
end

if system == "Darwin" then 
  -- add mac spefic settings here
  
end

if system == "Windows" then
  -- add windows spefic settings here

end

