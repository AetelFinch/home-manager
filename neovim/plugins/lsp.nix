{
  programs.nixvim = {
    plugins = {
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
        };
      };

      none-ls = {
        enable = true;
      
        sources = {
          diagnostics = {
            actionlint.enable = true;  # github actions
            yamllint.enable = true;  # yaml
            codespell.enable = true;  # english
            deadnix.enable = true;  # nix
            hadolint.enable = true;  # dockerfile

            pylint = {
              enable = true;
              settings = { extra_args = [ "--max-line-length" "120" ]; };
            };
          };

          formatting = {
            alejandra.enable = true;  # nix
            mdformat.enable = true;
            shfmt.enable = true;
            yamlfmt.enable = true;

            black = {
              enable = true;
              settings = { extra_args = [ "--line-length" "120" ]; };
            };  # python
          
            isort = {
              enable = true;
              settings = {
                extra_args = [
                  "--profile"
                  "black"
                  "--line-length"
                  "120"
                  "--ensure_newline_before_comments"
                  "true"
                  "--force_single_line"
                  "true"
                ];
              };
            };  # python
          };
        };
      };
    };

    keymaps = [
      # Open error in floating window
      {
        mode = "n";
        key = "<space>e";
        action.__raw = "vim.diagnostic.open_float";
      }
      
      # Go to prev error
      {
        mode = "n";
        key = "[d";
        action.__raw = "vim.diagnostic.goto_prev";
      }

      # Go to next error
      {
        mode = "n";
        key = "]d";
        action.__raw = "vim.diagnostic.goto_next";
      }

      # Activate all formatters to format current file
      {
        mode = "n";
        key = "\\fa";
        action = "<cmd>lua vim.lsp.buf.format({async = true})<CR>";
      }
    ];
  };
}
