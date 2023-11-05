-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup{
   options = {
      mode = 'buffers',
      offsets = {
         {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
         }
      },
   },
}
