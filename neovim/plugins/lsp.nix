{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;

      keymaps.lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };

      servers = {
        pyright = {
          enable = true;
          autostart = true;
        };  # python

        bashls = {
          enable = true;
          autostart = true;
        };  # bash

        docker-compose-language-service = {
          enable = true;
          autostart = true;
        };  # docker-compose

        dockerls = {
          enable = true;
          autostart = true;
        };  # dockerfile

        marksman = {
          enable = true;
          autostart = true;
        };  # markdown
        
        pylsp = {
          enable = true;
          autostart = true;

          settings = {
            plugins = {
              black = {
                enable = true;
                line_length = 120;
              };

              isort.enable = true;

              ruff = {
                enabled = true;
                lineLength = 120;
              };

              yamlls = {
                enable = true;
                autostart = true;
              };
            };
          };
        };  # python
      };
    };
  };
}
