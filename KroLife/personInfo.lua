local gl = {};

gl.age = 0;
gl.money = 0;

gl.getFormattedMoney = function()
    local formatted = gl.money
    while true do  
            formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
            if (k==0) then
                    break
            end
    end
    return formatted;
end

return gl;