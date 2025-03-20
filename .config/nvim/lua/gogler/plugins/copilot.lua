return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "ibhagwan/fzf-lua", },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    opts = {
      -- See Configuration section for options
    },
    vim.keymap.set({"n", "v"}, "<leader>C", "<cmd>CopilotChatToggle<CR>", opts),
    vim.keymap.set({"n", "v"}, "<leader>cc", "<cmd>CopilotChatPrompts<CR>", opts)
  },
}
