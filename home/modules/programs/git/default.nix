{
  ...
}:

{
  programs.git = {
    enable = true;
    lfs.enable = true;

    userName = "pivoshenko";
    userEmail = "volodymyr.pivoshenko@gmail.com";

    aliases = {
      undo = "reset HEAD~1 --mixed";
      amend = "commit -a --amend";
      prv = "!gh pr view";
      prc = "!gh pr create";
      prs = "!gh pr status";
      prm = "!gh pr merge -d";
    };

    extraConfig = {
      # == Security ==
      commit.gpgsign = true;
      user.useConfigOnly = true;

      # == Core settings ==
      core = {
        autocrlf = "input";
      };

      # == Display ==
      diff.colorMoved = "default";

      # == Repository settings ==
      init.defaultBranch = "main";

      # == Merge settings ==
      merge.conflictstyle = "diff3";

      # == Push settings ==
      push.default = "simple";

      # == Submodule settings ==
      submodule = {
        fetchJobs = 0;
        recurse = true;
      };
    };
  };
}
