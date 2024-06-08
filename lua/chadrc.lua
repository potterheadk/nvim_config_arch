-- This file needs to have the same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "onedark",

    -- hl_override = {
    --      Comment = { italic = true },
    --      ["@comment"] = { italic = true },
    -- },
}

M.plugins = {
    -- Add custom plugins
    user = {
        { "kyazdani42/nvim-tree.lua", config = function()
            require'nvim-tree'.setup {
                -- Your custom settings go here
                auto_open = true,  -- Automatically open the tree when entering a new tab
                auto_close = true, -- Automatically close the tree when it's the last window
                git = {
                    enable = true, -- Enable git integration
                },
                view = {
                    width = 30, -- Width of the tree
                    side = 'left', -- Side of the window where the tree will open
                },
            }
        end },
    },
}

M.mappings = {
    -- Add custom keybindings
    custom = {
        n = {
            ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Toggle NvimTree" },
            ["<leader>r"] = { "<cmd>NvimTreeRefresh<CR>", "Refresh NvimTree" },
            ["<leader>n"] = { "<cmd>NvimTreeFindFile<CR>", "Find File in NvimTree" },
      	    ["<leader>bd"] = { "<cmd>bd<CR>", "Close Current Buffer" },
            ["<leader>ba"] = { "<cmd>bufdo bd<CR>", "Close All Buffers" },
  	        ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find Files" },
            ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
            ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "Find Buffers" },
            ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Find Help Tags" },
            ["<leader>fs"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Find in Current Buffer" }, -- Custom keybinding to find in current buffer
        },
    },
}

return M
