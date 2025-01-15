local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')
lspconfig.intelephense.setup({})

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  preselect = 'item',
  completion = {
	  completeopt = 'menu,menuone,noinsert'
  },
  mapping = {
	  ['<Tab>'] = cmp.mapping.confirm({select = true}),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<C-S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
	  ['<S-Tab>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	  ['<C-p>'] = cmp.mapping(function()
		  if cmp.visible() then
			  cmp.select_prev_item({behavior = 'insert'})
		  else
			  cmp.complete()
		  end
	  end),
	  ['<C-n>'] = cmp.mapping(function()
		  if cmp.visible() then
			  cmp.select_next_item({behavior = 'insert'})
		  else
			  cmp.complete()
		  end
	  end),
  },
  snippet = {
	  expand = function(args)
		  require('luasnip').lsp_expand(args.body)
	  end,
  },
})

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'rust_analyzer',
		'lua_ls',
		'markdown_oxide',
		'pylsp',
	},
	handlers = {
		function(server_name)
			lspconfig[server_name].setup({})
		end,
	},
})


lsp_zero.setup()
