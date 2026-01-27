-- stylua: ignore start
-- NOTE: Some keybinds might exceed max line length rule

vim.cmd("command! PIN PlugInstall")
vim.keymap.set("n", "<space>cc", vim.lsp.buf.hover, {})
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set({ "n", "v" }, "<space>ren", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<space>w", ":WhichKey<CR>", { desc = "Which key?" })
vim.keymap.set({ "n", "v" }, "<space>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set({ "n", "v" }, "<space>fg", ":Telescope grep_string<CR>", { desc = "Grep string" })
vim.keymap.set({ "n", "v" },"<space>fd", ':lua require("conform").format({async = true})<CR>', { desc = "Format code" })
vim.keymap.set({ "n", "v" }, "<space>c/", ":Commentary<CR>", { desc = "Insert comment marker" })
vim.keymap.set("n", "<C-r>", ":source /home/colada/.config/nvim/init.lua<CR>", { desc = "Reload config" })
vim.keymap.set("n", "L", ":Neotree action=focus toggle=true<CR>", { desc = "Open filetree" })
vim.keymap.set("n", "<C-Tab>", "<C-w>w", { desc = "Switch active window" })
vim.keymap.set("n", "<C-h>", ":Alpha<CR>", { desc = "Home screen" })
vim.keymap.set("n", "<space>gg", ":Neogit<CR>", {desc = "Git manager"})
