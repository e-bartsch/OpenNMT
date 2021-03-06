local separators = require('tools.utils.separators')

local function norm(t)
  if type(t) == "table" then
    local v = {}
    local vrep = {}
    for _, tokt in ipairs(t) do
      local vt, vtrep
      vt, vtrep = norm(tokt)
      table.insert(v, vt)
      if vtrep then
        vrep[vt] = vtrep
      end
    end
    return v, vrep
  end

  local phStart = t:find(separators.ph_marker_open)

  if not phStart then
    return t
  end

  local phEnd = t:find(separators.ph_marker_close)
  assert(phEnd, 'invalid placeholder tag: ' .. t)

  local prefix = t:sub(1, phStart + separators.ph_marker_open:len() - 1)
  local suffix = t:sub(phEnd)
  local content = t:sub(prefix:len() + 1, phEnd - 1)
  local fields = onmt.utils.String.split(content, '：')

  if #fields == 1 then
    return t, nil
  else
    local placeholder = fields[1]
    local value = fields[2]
    return prefix .. placeholder .. suffix, value
  end
end

return {
  norm = norm
}
