require("my.keymaps")
require("my.options")
require("my.theme")
require("my.plugins")
require("my.autocommands")

local system = vim.loop.os_uname().sysname

if system == "Linux" then
  -- add linux spefic settings here
        
end

if system == "Darwin" then 
  -- add mac spefic settings here
  
end

if system == "Windows" then
  -- add windows spefic settings here

end

