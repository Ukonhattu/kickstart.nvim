return {
  {
    'mfussenegger/nvim-dap',
    config = function ()
     vim.keymap.set('n', '<leader>db', '<cmd> DapToggleBreakpoint <CR>')
     local function dap_widget ()
        local widgets = require('dap.ui.widgets')
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end
      vim.keymap.set('n', '<leader>dus', dap_widget)
    end
  },

  {
    'theHamsta/nvim-dap-virtual-text',
    config = function ()
      require("nvim-dap-virtual-text").setup()
    end
  },

  {
    'rcarriga/nvim-dap-ui',
    config = function ()
      require("dapui").setup()
    end
  }
}
