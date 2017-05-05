local function customloader(r)
  return function(n,p,i)
    if p.type == "loader" then
      p.structure.direction_in.sheet.filename = "__base__/graphics/entity/loader/"..p.name.."-structure.png"
      p.structure.direction_out.sheet.filename = "__base__/graphics/entity/loader/"..p.name.."-structure.png"
    end
    p[i]=string.gsub(p[i],"(__.[^/]+__)","__"..modname.."__/%1")
    if r ~= nil then
      for k,v in pairs(r) do
        p[k]=v
      end
    end
  end
end

merge(overwrite_graphics,{
  ["__base__/graphics/icons/loader.png"]=customloader{},
  ["__base__/graphics/entity/loader/loader-structure.png"]=replace{width = 96},
  ["__base__/graphics/entity/loader/fast-loader-structure.png"]=replace{width = 96},
  ["__base__/graphics/entity/loader/express-loader-structure.png"]=replace{width = 96},
})
