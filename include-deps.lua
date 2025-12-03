-- include-deps.lua
function RawBlock(el)
  -- Match {{ include filename }}
  local inc = el.text:match("{{%s*include%s+([^%s}]+)%s*}}")
  if inc then
    quarto.doc.add_dependency(inc)
  end
  return el
end
