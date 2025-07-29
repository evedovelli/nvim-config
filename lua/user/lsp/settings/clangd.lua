return {
  -- on_new_config = function (config, root_dir)
  --   if root_dir == '/scratch/users/evedovel/projects/hpp/hip' then
  --     config.cmd = {
  --       "clangd",
  --         "--compile-commands-dir=/scratch/users/evedovel/projects/hpp/hip/build/"
  --     }
  --   end
  -- end,
  filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp", "hip", "cuda" },
}
