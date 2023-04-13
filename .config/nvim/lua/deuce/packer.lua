-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use("gruvbox-community/gruvbox")
    use("junegunn/fzf")
    use("rust-lang/rust.vim")
    use ({ 'nvim-lua/plenary.nvim' })
    use ({
        'nvim-telescope/telescope.nvim'
    })
    use ({ 'nvim-lua/popup.nvim' }) -- may be optional but just add it to be safe
    use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
end)
