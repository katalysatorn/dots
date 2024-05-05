local lsp = require("lsp-zero")
local cmp = require("cmp")
local coq = require("coq")
local cmp_action = require("lsp-zero").cmp_action()

lsp.preset('recommended')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping.confirm({select = false}),
	})
})

lsp.on_attach(function(_client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.on_attach(function(_client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
-- require('mason').setup({})
-- require('mason-lspconfig').setup({
--   ensure_installed = { 'html', 'rust_analyzer', 'gopls', 'markdown_oxide' },
--   handlers = {
--     function(server_name)
--       require('lspconfig')[server_name].setup({})
--     end,
--   },
-- })
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function (server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup {}
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
--	["rust_analyzer"] = function ()
--		require("rust-tools").setup {}
--	end
}

lsp.setup(coq.lsp_ensure_capabilities())
