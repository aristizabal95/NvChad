require("nvchad.configs.lspconfig").defaults()

-- Configure basedpyright BEFORE enabling
-- Get default capabilities from cmp_nvim_lsp if available
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Ensure semantic tokens are enabled
capabilities.textDocument.semanticTokens = {
  dynamicRegistration = false,
  tokenTypes = {
    "namespace", "type", "class", "enum", "interface", "struct",
    "typeParameter", "parameter", "variable", "property", "enumMember",
    "event", "function", "method", "macro", "keyword", "modifier",
    "comment", "string", "number", "regexp", "operator", "decorator"
  },
  tokenModifiers = {
    "declaration", "definition", "readonly", "static", "deprecated",
    "abstract", "async", "modification", "documentation", "defaultLibrary"
  },
  formats = { "relative" },
  requests = {
    range = true,
    full = {
      delta = true
    }
  },
  multilineTokenSupport = false,
  overlappingTokenSupport = false,
  serverCancelSupport = true,
  augmentsSyntaxTokens = true
}

vim.lsp.config("basedpyright", {
  capabilities = capabilities,
  -- Override NvChad's on_init that disables semantic tokens
  on_init = function(client, _)
    -- Do nothing - let semantic tokens work!
  end,
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
      }
    }
  }
})

local servers = { "html", "cssls", "basedpyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
