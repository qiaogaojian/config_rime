--- 过滤器：\r =\r\n
function xform_newline(text)
    if text == "" then 
        return "" 
    end
    print("newline process"..text)
    res = string.gsub(text, "n", "_")
    return res
end

function newline_filter(input)
    print("********************************* newline_filter *********************************")
    for candidate in input:iter() do
        candidate:get_genuine().comment = xform_newline(candidate.text)
        yield(candidate)
    end    
end 

return newline_filter