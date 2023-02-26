require('v1.base')
require('v1.highlights')

if vim.g.vscode then
  require('v1.vs-maps')
else
  require('v1.maps')
  require('v1.plugins')
end


local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('v1.macos')
end
if is_win then
  require('v1.windows')
end
