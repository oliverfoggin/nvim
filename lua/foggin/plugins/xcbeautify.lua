return {
  "wojciech-kulik/xcodebuild.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("xcodebuild").setup({
      logs = {
        logs_formatter = nil,
      },
      code_coverage = {
        enabled = true,
      },
    })
  end,
}
