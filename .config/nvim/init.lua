vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
 vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
