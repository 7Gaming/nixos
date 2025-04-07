inputs: {
  programs.plasma.panels = [
    {
      height = 22;
      location = "top";
      alignment = "center";
      floating = false;
      hiding = "normalpanel";
      lengthMode = "fill";
      opacity = "opaque";

      widgets = [
        # "org.kde.plasma.kickoff"
        # "org.kde.plasma.pager"
        # "org.kde.plasma.icontasks"
        "org.kde.plasma.panelspacer"
        # "org.kde.plasma.marginsseparator"
        # "org.kde.plasma.digitalclock"
        {
          digitalClock = {
            date.enable = false;
          };
        }
        # "org.kde.plasma.marginsseparator"
        "org.kde.plasma.panelspacer"
        "org.kde.plasma.systemtray"
        # "org.kde.plasma.showdesktop"
      ];
    }

    {
      height = 50;
      location = "bottom";
      alignment = "center";
      floating = true;
      hiding = "autohide";
      lengthMode = "fit";
      opacity = "opaque";

      widgets = [
        # "org.kde.plasma.kickoff"
        # "org.kde.plasma.pager"
        # "org.kde.plasma.icontasks"
        {
          name = "org.kde.plasma.icontasks";
          config = {
            General = {
              launchers = [
                "applications:firefox.desktop"
                "applications:org.kde.dolphin.desktop"
                "applications:code.desktop"
                "applications:org.kde.konsole.desktop"
              ];
            };
          };
        }
        # "org.kde.plasma.marginsseparator"
        # "org.kde.plasma.systemtray"
        # "org.kde.plasma.digitalclock"
        # "org.kde.plasma.showdesktop"
      ];
    }
  ];
}
