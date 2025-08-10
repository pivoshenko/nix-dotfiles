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
      commit.gpgsign = true;

      core = {
        autocrlf = "input";
      };

      diff.colorMoved = "default";

      init.defaultBranch = "main";

      merge.conflictstyle = "diff3";

      push.default = "simple";

      submodule = {
        fetchJobs = 0;
        recurse = true;
      };

      user.useConfigOnly = true;
    };
  };
}
