data.raw["transport-belt"]["transport-belt"]            .friendly_map_color = {r=0.85, g=0.65, b=0.00}
data.raw["splitter"]["splitter"]                        .friendly_map_color = {r=1.00, g=0.76, b=0.00}
data.raw["loader"]["loader"]                            .friendly_map_color = {r=1.00, g=0.76, b=0.00}
data.raw["underground-belt"]["underground-belt"]        .friendly_map_color = {r=0.70, g=0.53, b=0.00}

data.raw["transport-belt"]["fast-transport-belt"]       .friendly_map_color = {r=0.85, g=0.20, b=0.00}
data.raw["splitter"]["fast-splitter"]                   .friendly_map_color = {r=1.00, g=0.23, b=0.00}
data.raw["loader"]["fast-loader"]                       .friendly_map_color = {r=1.00, g=0.23, b=0.00}
data.raw["underground-belt"]["fast-underground-belt"]   .friendly_map_color = {r=0.70, g=0.16, b=0.00}

data.raw["transport-belt"]["express-transport-belt"]    .friendly_map_color = {r=0.00, g=0.79, b=0.85}
data.raw["splitter"]["express-splitter"]                .friendly_map_color = {r=0.00, g=0.93, b=1.00}
data.raw["loader"]["express-loader"]                    .friendly_map_color = {r=0.00, g=0.93, b=1.00}
data.raw["underground-belt"]["express-underground-belt"].friendly_map_color = {r=0.00, g=0.65, b=0.70}

--changes color of pipes/storage tank
for _, v in pairs(data.raw["pipe-to-ground"]) do v      .friendly_map_color = {r=0.63, g=0.69, b=0.70} end
for _, v in pairs(data.raw["pipe"])           do v      .friendly_map_color = {r=0.76, g=0.84, b=0.85} end
for _, v in pairs(data.raw["storage-tank"])   do v      .friendly_map_color = {r=0.76, g=0.84, b=0.85} end
for _, v in pairs(data.raw["pump"])           do v      .friendly_map_color = {r=0.90, g=0.98, b=1.00} end
for _, v in pairs(data.raw["offshore-pump"])  do v      .friendly_map_color = {r=0.90, g=0.98, b=1.00} end

for _, v in pairs(data.raw["electric-pole"])  do v      .friendly_map_color = {r=0.65, g=0.65, b=0.65} end
for _, v in pairs(data.raw["generator"])      do v      .friendly_map_color = {r=0.00, g=0.35, b=0.15} end
for _, v in pairs(data.raw["radar"])          do v      .friendly_map_color = {r=0.49, g=0.91, b=0.75} end
for _, v in pairs(data.raw["roboport"])       do v      .friendly_map_color = {r=0.39, g=0.53, b=0.51} end
