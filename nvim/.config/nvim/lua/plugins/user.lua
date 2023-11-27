return { {
    "folke/todo-comments.nvim",
    lazy = false,
    dependecies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false
  },
  {
    "simnalamburt/vim-mundo",
    lazy = false
  },
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "lervag/vimtex",
    lazy = false
  },
  {
    "folke/zen-mode.nvim",
    keys = {
      { "Z", "<cmd>ZenMode<cr>", desc = "ZenMode" },
    }
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup()
    end,
  },
  {
    -- "instant-markdown/vim-instant-markdown",
    -- lazy = false,
    "iamcco/markdown-preview.nvim",
    lazy = false,
  },
  {
    "ixru/nvim-markdown",
    lazy = false,
  },
    
  {
    "danymat/neogen",
    lazy = false,
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },
  {
    "ggandor/flit.nvim",
    lazy = false,
    dependencies = { "ggandor/leap.nvim", "tpope/vim-repeat" },
    config = function()
      require("flit").setup({
        keys = { f = "f", F="F", t = "t", T = "T" },
        labeled_modes = "v",
        multiline = true,
        opts = {}
      })
    end
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = false,
  },
{
  "folke/noice.nvim", -- beautiful cmd 
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }

  },
  -- {
  --   "VonHeikemen/fine-cmdline.nvim",
  --   lazy = false,
  --   config = function()
  --     require('fine-cmdline').setup({
  --       cmdline = {
  --         enable_keymaps = true,
  --         smart_history = true,
  --         prompt = ': '
  --       },
  --       popup = {
  --         position = {
  --           row = '30%',
  --           col = '50%',
  --         },
  --         size = {
  --           width = '60%',
  --         },
  --         border = {
  --           style = 'rounded',
  --         },
  --         win_options = {
  --           winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
  --         },
  --       },
  --     })
  --   end,
  --   },
    {
      "tpope/vim-commentary",
      lazy = false,
    },
    {
      "easymotion/vim-easymotion",
      lazy = false,
    },
    {
      "christoomey/vim-tmux-navigator",
      lazy = false,
    },
    {
      "rbong/vim-flog",
      lazy = true,
      cmd = { "Flog", "Flogsplit", "Floggit" },
      dependencies = {
        "tpope/vim-fugitive",
      },
    },
    {
      "Exafunction/codeium.vim",
      event = "BufEnter",
      config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-o>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<C-.>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
    },
  
-- },


    -- {
    --   "linux-cultist/venv-selector.nvim",
    --   dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    --   config = function()
    --   require("venv-selector").setup({
    -- -- Your options go here
    --     anaconda_base_path = "/opt/anaconda",
    --     anaconda_envs_path = "/home/andrea/.conda/envs",
    --     -- name = "envs",
    --    -- auto_refresh = false
  -- }) end,
	-- event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	-- keys = {{
    -- -- Keymap to open VenvSelector to pick a venv.
		-- "<leader>vs", "<cmd>:VenvSelect<cr>",
		-- -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
		-- "<leader>vc", "<cmd>:VenvSelectCached<cr>"
	-- }}
-- },
    -- {
    --   "voldikss/vim-floaterm",
    --   lazy = false,
    -- },

}
