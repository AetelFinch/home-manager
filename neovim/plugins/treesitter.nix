{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      settings = {
        auto_install = true;
        ensure_install = "all";
	    highlight.enable = true;
        sync_install = false;
      };
    };
  };
}
