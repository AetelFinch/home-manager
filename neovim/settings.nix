{
  programs.nixvim = {
    viAlias = true;
    vimAlias = true;

    opts = {
      tabstop = 4;
      shiftwidth = 4;
      mouse = "a";
      expandtab = true;
      number = true;
      cursorline = true;
      autoindent = true;
    };
  };
}

