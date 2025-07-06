-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  sources = {
    providers = {
      cmdline = {
        -- ignores cmdline completions when executing shell commands
        enabled = function()
          return vim.fn.getcmdtype() ~= ':' or not vim.fn.getcmdline():match("^[%%0-9,'<>%-]*!")
        end
      }
    }
  }
}
