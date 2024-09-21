# https://github.com/nvimtools/none-ls.nvim/blob/main/doc/MAIN.md

{
  programs.nixvim.plugins = {
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
}
