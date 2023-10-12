function countMixedCharacters(text)
  local count = 0
  local isInsideWord = false

  for utf8char in text:gmatch("[%z\1-\127\194-\244][\128-\191]*") do
    if utf8char:match("[\228-\233][\128-\191][\128-\191]") then
      count = count + 1  -- 汉字字符
      isInsideWord = false
    else
      if isInsideWord then
        -- 已经在英文单词中
      else
        count = count + 1  -- 新的英文单词
      end
      isInsideWord = true
    end
  end
  return count
end

function count_words()
	local current_buffer = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(current_buffer, 0, -1, false)
    local text = table.concat(lines, '\n')
	local result = countMixedCharacters(text)

	print("Words: " .. result)
end

vim.keymap.set('n','<F9>',':lua count_words()<CR>')
