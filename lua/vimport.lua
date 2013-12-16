vimport = {}

function vimport.f(x, y, z)
  print("A fancy function f is called with " .. x .. ", " .. y .. ", and " .. z)
  return x + y + z
end

function vimport.dev()
  print('hello from lua!')
end
