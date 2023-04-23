local string = "---------------------------------"
for i,v in next, getgc() do
    if type(v) == "function" and not is_synapse_function(v)then
        for i2,v2 in pairs(debug.getinfo(v)) do
            string = string .. "\n"
            string = string .. tostring(i2) .. " " .. tostring(v2) .. "\n"
        end
        string = string .. "\n---------------------------------\n"
    end
end
writefile("Functions.txt", string)
