vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable Spacebar Key's Default Behaviour in Normal and Visual Mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Conciseness
local opts = { noremap = true, silent = true }

-- Switch To Normal Mode

vim.keymap.set("i", "jk", "<ESC>", opts)

-- Saving File

vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- Save File Without Auto Formatting

vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- Quit File

vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- Delete Single Character Without Copying to The Register
vim.keymap.set("n", "x", '"_x', opts)

-- Find and Center

vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows

vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffer Managment

vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", opts)
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts)

-- Window Managment

vim.keymap.set("n", "<leader>v", "<C-w>v", opts)
vim.keymap.set("n", "<leader>h", "<C-w>s", opts)
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts)

-- Navigation Between Splits

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tab Managment

vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts)
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts)

-- Toggle Line Wrapping

vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in Indent Mode

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep Last Yanked When Pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
