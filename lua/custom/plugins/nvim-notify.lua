return {
  'rcarriga/nvim-notify', name = "notify",
  config = function()
    require("notify").setup()
    vim.notify = require("notify")
  end
}
