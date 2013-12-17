local re = require 'luaregex'
vimport = {}

function vimport.f(x, y, z)
  print("A fancy function f is called with " .. x .. ", " .. y .. ", and " .. z)
  return x + y + z
end

function vimport.dev()
  print('hello from lua!')
end

--print(vimport.matchstr('this is a pen', [=[\(pen\|is\)]=]))
io.input("./sketch/src/sketch/core.clj")
local file = io.read("*all")
local result = re.findall([=[\s*\(:(?:require|use)\s*\[(.*?)\]]=], file)
for k, v in ipairs(result) do
  print(k, v:group(1))
end
-- print(vim.eval([=[file =~ 'j\sk']=]))
-- local before = os.clock()
-- print(string.format("It took %.2f sec", os.clock() - before))
