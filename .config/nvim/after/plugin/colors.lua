function ColorMyPencils(color)
--    color = color or "rose-pine"
    color = color or "tokyonight-night"
    vim.cmd.colorscheme(color)

    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.opt.background = "dark"

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
