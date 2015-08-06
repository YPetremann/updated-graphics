require("lfs")
function script_path()
  return debug.getinfo(2, "S").source:sub(2):match("(.*/)")
end

function dirtree(dir)
  assert(dir and dir ~= "", "directory parameter is missing or empty")
  if string.sub(dir, -1) == "/" then
    dir=string.sub(dir, 1, -2)
  end
  local function yieldtree(dir)
    for entry in lfs.dir(dir) do
      if entry ~= "." and entry ~= ".." then
        entry=dir.."/"..entry
        local attr=lfs.attributes(entry)
        coroutine.yield(entry,attr)
        if attr.mode == "directory" then
          yieldtree(entry)
        end
      end
    end
  end
  return coroutine.wrap(function() yieldtree(dir) end)
end

dir = script_path()
f=io.open(dir.."config/generated.lua", "w")
f:write("merge(overwrite_graphics,{\n")
for filename, attr in dirtree(dir) do
  if filename:sub(-4) == ".png" then
    f:write("  [\""..filename:gsub(dir:gsub("%-","%%-"),"").."\"]=replace{},\n")
  end
end
f:write("})")
