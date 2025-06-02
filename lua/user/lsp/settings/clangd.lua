return {
  on_new_config = function (config, root_dir)
    --if root_dir == '/home/evedovelli/projects/imAIgine' then
    --  config.cmd = {
    --    "im", "clangd",
    --      "--compile-commands-dir=/untether/workspace/builds/par_release/",
    --      "--path-mappings="..
    --        "/home/evedovelli/.docker_volumes/builds/imAIgine=/untether/workspace/builds,"..
    --        "/home/evedovelli/projects/imAIgine=/untether/workspace/imAIgine"
    --  }
    --else
    if root_dir == '/home/evedovelli/projects/Boqueria/src/pal' then
      config.cmd = {
        "bq", "clangd",
          "--compile-commands-dir=/untether/workspace/builds/boqueria_dev/",
          "--path-mappings="..
            "/home/evedovelli/.docker_volumes/builds/Boqueria=/untether/workspace/builds,"..
            "/home/evedovelli/projects/Boqueria=/untether/workspace/Boqueria"
      }
    end
  end,
}
