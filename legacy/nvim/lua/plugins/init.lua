require('lazy').setup({
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",
	"tpope/vim-commentary",
	"pocco81/auto-save.nvim",
	"edluffy/hologram.nvim",
	"tpope/vim-sleuth",
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ':TSUpdate',
	},
	{
		"windwp/nvim-ts-autotag",
		init = function() require("nvim-ts-autotag").setup({enable_rename = true, enable_close_on_stash = true, enable_close = true}) end
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons'},
		init = function() 
			vim.g.barbar_auto_setup = true 
		end,
		version = "^1.0.0"
	},


	{
		"Nvchad/nvterm",
		config = function ()
			require("nvterm").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1001,
	},
	{
		'nvim-tree/nvim-tree.lua',
		version = "*",
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function() 
			require('nvim-tree').setup {}
		end,

	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"williamboman/mason.nvim", config = true
			},
			"williamboman/mason-lspconfig.nvim",
			{'j-hui/fidget.nvim', opts = {}},
			"folke/neodev.nvim",
		},
	},
	{
		"ojroques/nvim-osc52"
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'rafamadriz/friendly-snippets',
		},
	},
	{
		"folke/which-key.nvim", opts = {},
	},
	{
		'lewis6991/gitsigns.nvim',
		opts = {
			signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		},
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns
			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

		map({ 'n', 'v' }, ']c', function()
			if vim.wo.diff then
				return ']c'
			end
			vim.schedule(function()
				gs.next_hunk()
			end)
			return '<Ignore>'
		end, { expr = true, desc = 'Jump to next hunk' })

		map({ 'n', 'v' }, '[c', function()
			if vim.wo.diff then
				return '[c'
			end
			vim.schedule(function()
				gs.prev_hunk()
			end)
			return '<Ignore>'
		end, { expr = true, desc = 'Jump to previous hunk' })
		map('v', '<leader>hs', function()
			gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
		end, { desc = 'stage git hunk' })
		map('v', '<leader>hr', function()
			gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
		end, { desc = 'reset git hunk' })
		map('n', '<leader>hs', gs.stage_hunk, { desc = 'git stage hunk' })
		map('n', '<leader>hr', gs.reset_hunk, { desc = 'git reset hunk' })
		map('n', '<leader>hS', gs.stage_buffer, { desc = 'git Stage buffer' })
		map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'undo stage hunk' })
		map('n', '<leader>hR', gs.reset_buffer, { desc = 'git Reset buffer' })
		map('n', '<leader>hp', gs.preview_hunk, { desc = 'preview git hunk' })
		map('n', '<leader>hb', function()
			gs.blame_line { full = false }
		end, { desc = 'git blame line' })
		map('n', '<leader>hd', gs.diffthis, { desc = 'git diff against index' })
		map('n', '<leader>hD', function()
			gs.diffthis '~'
		end, { desc = 'git diff against last commit' })
		map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'toggle git blame line' })
		map('n', '<leader>td', gs.toggle_deleted, { desc = 'toggle git show deleted' })

		map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'select git hunk' }) end,
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = false,
				theme = "onedark",
				component_separators = "|",
				section_separators = "",
			}
		}
	},
	{
		'lukas-reineke/indent-blankline.nvim',
		main = "ibl",
		opts = {},
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim", 
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable "make" == 1
				end,
			},
		},

	},
}, {})
