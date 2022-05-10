local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"


-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", command_mode = "c",


-- 在 neovim 中使用 Lua
-- https://github.com/glepnir/nvim-lua-guide-zh


-- zhenhuli key mappings
keymap("i", "JJ", "<esc>", opts)
-- keymap("i", ";;", "<esc>", opts)
keymap("i", ",", ",<Space>", opts)

keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)

-- zhenhuli





-- Plug vim-floaterm
-- Plug https://github.com/voldikss/vim-floaterm
-- 悬浮终端
--
keymap("n", "<F9>", ":FloatermNew<CR>", opts)
keymap("n", "<F10>", ":FloatermPrev<CR>", opts)
keymap("n", "<F11>", ":FloatermNext<CR>", opts)
keymap("n", "<F12>", ":FloatermToggle<CR>", opts)

keymap("t", "<F9>", "<C-\\><C-n>:FloatermNew<CR>", opts)
keymap("t", "<F10>", "<C-\\><C-n>:FloatermPrev<CR>", opts)
keymap("t", "<F11>", "<C-\\><C-n>:FloatermNext<CR>", opts)
keymap("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", opts)

--
-- Plug vim-floaterm end



-- Plug vim-spector
-- Plug https://github.com/puremourning/vimspector
-- 调试
--
keymap("n", "<F1>", ":call vimspector#Continue() <CR>", opts)
keymap("n", "<F2>", ":call vimspector#ToggleBreakpoint() <CR>", opts)
keymap("n", "<F3>", ":call vimspector#Restart() <CR>", opts)
keymap("n", "<F4>", ":call vimspector#Reset() <CR>", opts)
-- keymap("n", "<F5>", ":call vimspector#Reset() <CR>", opts)
-- keymap("n", "<F6>", ":call vimspector#Reset() <CR>", opts)
-- keymap("n", "<F5>", ":call vimspector#Continue() <CR>", opts) -- 在mac下 F5 好像被拦截了，需要使用 Fn+F5
-- keymap("n", "<F6>", ":VimspectorLoadSession <CR>", opts)
keymap("n", "<F7>", ":call vimspector#ListBreakpoints() <CR>", opts)
keymap("n", "<F8>", ":call vimspector#ClearBreakpoints() <CR>", opts)
--
-- Plug vim-spector end



-- Plug vim-clang-format
-- Plug Link https://github.com/rhysd/vim-clang-format
-- 代码自动格式化
--
-- TODO: 卡顿
vim.cmd(
[[
  let g:clang_format#detect_style_file = 1
  let g:clang_format#auto_format = 0
  let g:clang_format#auto_format_on_insert_leave = 0
]])
--
-- Plug vim-clang-format end



-- Plug nvim-tree
-- Plug Link https://github.com/kyazdani42/nvim-tree.lua
-- 文件树
--
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":NvimTreeFocus<cr>", opts)
--
-- Plug kyazdani42/nvim-tree.lua end


-- Plug folke/trouble.nvim
-- Plug Link https://github.com/folke/trouble.nvim
-- 视图增强
--
keymap("n", "<F6>", ":TroubleToggle<cr>", opts) -- fn + F6
--
-- Plug folke/trouble.nvim end



-- Plug akinsho/bufferline.nvim
-- Plug Link https://github.com/akinsho/bufferline.nvim
-- 切换buffer
--
-- 
keymap("n", "R", ":BufferLineCycleNext<CR>", opts)
keymap("n", "E", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<C-r>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-e>", ":BufferLineCyclePrev<CR>", opts)
--
-- Plug akinsho/bufferline.nvim end



-- Plug telescope.nvim
-- Plug Link https://github.com/nvim-telescope/telescope.nvim
-- XXX
--
-- keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-p>", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<C-b>", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<Space>gg", "<cmd>Telescope live_grep<cr>", opts)
-- keymap("n", "<Space>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<Space>f", "<cmd>lua require('telescope').extensions.frecency.frecency(require('telescope.themes').get_dropdown({ previewer = true }))<cr>", opts)
-- keymap("n", "<Space>F", "<cmd>Telescope live_grep<cr>", opts)
-- bookmark's
keymap("n", "ma", "<cmd>Telescope vim_bookmarks current_file<cr>", opts)
keymap("n", "mA", "<cmd>Telescope vim_bookmarks all<cr>", opts)
--
-- Plug telescope.nvim end



-- Plug XXX
-- Plug Link https://github.com/XXX
-- XXX
--
--
-- Plug XXX end


-- Plug aerial.nvim
-- Plug Link https://github.com/stevearc/aerial.nvim
-- XXX
--
keymap("n", "<C-s>", "<cmd>AerialToggle float<cr>", opts)
keymap("n", "<C-a>", "<cmd>AerialClose <cr>", opts)
--
-- Plug aerial.nvim end




-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- NOTE: require winshit plugin
keymap("n", "<C-W>m", ":WinShift<cr>", opts)

-- i j remap to gi gj to get the consistent behaviour in wrap content mode (i.e. set wrap)
-- keymap("n", "j", "gj", opts)
-- keymap("n", "k", "gk", opts)


-- no highlight
-- keymap("n", "<leader>l", ":nohl<cr>", opts)

-- save buffer
keymap("n", "<leader>w", ":w<cr>", opts)

-- exit cur window
keymap("n", "<leader>q", ":q<cr>", opts)

-- delete cur buffer
keymap("n", "<leader>d", ":Bdelete<cr>", opts)
-- keymap("n", "<leader>D", ":Bdelete<cr>", opts)

-- exit whole program
keymap("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opts)

-- remap macro record key
keymap("n", "Q", "q", opts)

-- cancel q
keymap("n", "q", "<Nop>", opts)

-- center cursor
-- keymap("n", "n", "nzzzv", opts)
-- keymap("n", "N", "Nzzzv", opts)
-- keymap("n", "J", "mzJ`z", opts)
-- keymap("n", "j", "jzz", opts)
-- keymap("n", "k", "kzz", opts)

-- Resize with arrows
-- mac 可能有点问题
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)





keymap("n", "<C-o>", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
keymap("n", "<leader>u", "<cmd>Trouble lsp_references<cr>", opts)

-- calltree
keymap("n", "<leader>in", "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", opts)

-- debug
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
-- keymap("n", "<leader>dl", "lua require'dap'.run_last()<cr>", opts)
-- keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
-- keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
-- keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- git diff view
keymap('n', '<leader>j', ']c', opts)
keymap('n', '<leader>k','[c', opts)


-- unit test
keymap("n", "<leader>rr", "<cmd>UltestNearest<cr>", opts)
keymap("n", "<leader>rd", "<cmd>UltestDebugNearest<cr>", opts)

-- comment
-- keymap("n", "gcf", "<cmd>Dox<cr>", opts)
keymap("n", "cc", "<cmd>CommentToggle<cr>", opts)
-- keymap("n", "cl", "<cmd>'<,'>CommentToggle<cr>", opts)

-- sniprun
keymap("n", "<leader>rf", ":%SnipRun<cr>", opts)
keymap("v", "<leader>rs", ":%SnipRun<cr>", opts)

-- for spell check
vim.cmd(
[[
  nnoremap <leader>s :call search('\w\>', 'c')<CR>a<C-X><C-S>
]])

