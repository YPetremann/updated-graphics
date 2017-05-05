function findmodname()
  -- find the current mod name
  return debug.getinfo(2, "S").source:sub(2):match("(__.[^/]*__)/")
end

function prequire(f)
  -- protected variant of require
  local s,e=pcall(function()require(f)end)
  if not s then
    if type(e)=="string" then
      print(f..":"..e)
    else
      print(f..": can't load "..modname.."/"..string.gsub(f, "%.", "/")..".lua")
    end
  end
end

function patch()
  -- apply texturepack
  local function foreach(d,g,t,n,p,i) 
    if d[n]~=nil then 
      if type(d[n])=="function" then d[n](n,p,i) else p[i]=d[n] end
    end 
    if type(t)=="table" then 
      for k,v in pairs(t) do foreach(d,g,v,n.."."..k,t,k) end 
    elseif type(t)=="string" then 
      if g[t]~=nil then
        if type(g[t])=="function" then g[t](n,p,i) else p[i]=g[t] end
      end
    end
  end
  foreach(overwrite_data,overwrite_graphics,data.raw,"data.raw")
end

overwrite_data = {}
overwrite_graphics = {}
--modname = findmodname()
modname = "updated-graphics"

------ Methods updating texture list ------
function merge(t1,t2)
  -- extend table with content based on key
  for k,v in pairs(t2) do
    t1[k]=v
  end
end

function update(t1,t2)
  -- update already defined key only
  for k,v in pairs(t2) do
    if t1[k] ~= nil then t1[k]=v end
  end
end

function extend(t1,t2)
  -- extend table with content based on value
  for _,v in pairs(t2) do
    table.insert(t1,v)
  end
end

------ patching methods ------
function replace(r)
  --replace the texture with the new version and apply modifications on neighbors keys
  return function(n,p,i)
    p[i]=string.gsub(p[i],"(__.[^/]+__)","__"..modname.."__/%1")
    if r ~= nil then
      for k,v in pairs(r) do
        p[k]=v
      end
    end
  end
end

function neighbors(r)
  --apply modifications on neighbors keys
  return function(n,p,i)
    if r ~= nil then
      for k,v in pairs(r) do
        p[k]=v
      end
    end
  end
end

function combine(r)
  --apply multiple patching methods
  return function(n,p,i)
    if r ~= nil then
      for _,v in pairs(r) do
        v(n,p,i)
      end
    end
  end
end

function fix(k,t)
  --change a value by those indicated
  return function(n,p,i)
    if t[p[k]] ~= nil then
      p[k]=t[p[k]]
    end
  end
end
