-- import bufferline plugin safely
local setup, bufferline = pcall(require, "bufferline")
if not setup then
    return
end

-- enable bufferline
bufferline.setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true,
            }
        },
        separator_style = "slant",
    }
})