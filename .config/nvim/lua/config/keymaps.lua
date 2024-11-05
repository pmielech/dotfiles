-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap
local opts = { noremap = true, silent = true }

-- Increament/ decreament
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- d word backwards
map.set("n", "dw", "vd_d")

-- tabs
map.set("n", "te", ":tabedit", opts)
map.set("n", "<tab>", ":tabnext<Return>", opts)
map.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
map.set("n", "<C-w><left>", "<C-w><")
map.set("n", "<C-w><right>", "<C-w>>")
map.set("n", "<C-w><up>", "<C-w>+")
map.set("n", "<C-w><down>", "<C-w>-")

-- Increment/decrement
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- Select all
map.set("n", "<C-a>", "gg<S-v>G")
