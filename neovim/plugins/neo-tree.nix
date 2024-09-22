{
  programs.nixvim = {
    plugins = {
      neo-tree = {
        enable = true;
        closeIfLastWindow = true;
        sources = ["filesystem" "git_status"];

        filesystem.filteredItems = {
          hideDotfiles = false;
          hideGitignored = false;
          hideHidden = false;
        };
      };
    };
    keymaps = [
      {
        mode = "n";
        key = "\\\\";
        action = ":Neotree reveal toggle<CR>";
      }
    ];
  };
}
