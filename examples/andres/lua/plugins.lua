return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'

	use({
		'kdheepak/lazygit.nvim',
		config = { function()
			vim.keymap.set('n', '<leader>g', ":LazyGit<CR>", {})
		end },
	})

	use({
		"windwp/nvim-autopairs",
		config = { function() require("nvim-autopairs").setup {
			}
		end },
	})

	use({
		"kwkarlwang/bufjump.nvim",
		config = function()
			require("bufjump").setup({
				on_success = function()
					vim.cmd([[execute "normal! g`\"zz"]])
				end,
			})
		end
	})

	use({
		'terrortylor/nvim-comment',
		config = { function()
			require('nvim_comment').setup({ comment_empty = false })
		end },
	})

	use({
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = { function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		end },
	})

	use({
		'nvim-lualine/lualine.nvim',
		requires = {
			{ 'kyazdani42/nvim-web-devicons' },
			{ 'Mofiqul/dracula.nvim' },
		},
		config = { function()
			local dracula = require("dracula")
			dracula.setup({
				show_end_of_buffer = true,
				transparent_bg = true,
				lualine_bg_color = "#44475a",
				italic_comment = true,
			})

			require('lualine').setup {
				options = {
					theme = 'dracula-nvim'
				}
			}

			vim.cmd [[colorscheme dracula]]
		end },
	})

	use({
		'nvim-treesitter/nvim-treesitter',
		run = { ':TSUpdate' },
		config = { function()
			require 'nvim-treesitter.configs'.setup {
				ensure_installed = all,

				sync_install = false,

				auto_install = true,

				highlight = {
					enable = true,
					disable = function(_, buf)
						local max_filesize = 500 * 1024
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
					additional_vim_regex_highlighting = false,
				},
			}
		end },
		autotag = {
			enable = true,
		},
	})

	use({
		'neovim/nvim-lspconfig',

		requires = {
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-cmdline' },

			{ 'L3MON4D3/LuaSnip' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ "rafamadriz/friendly-snippets" },

			{ 'mfussenegger/nvim-jdtls' },
		},
		config = { function()
			require('lsp')
		end },
	})

	use({
		'rcarriga/nvim-dap-ui',

		requires = {
			{ 'mfussenegger/nvim-dap' },
		},
		config = { function()
			require('plugin-dap')
		end },
	})


end)
