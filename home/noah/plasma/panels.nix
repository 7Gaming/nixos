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
        "org.kde.plasma.panelspacer"
        {
          digitalClock = {
            date.enable = false;
          };
        }
        "org.kde.plasma.panelspacer"
        "org.kde.plasma.systemtray"
      ];
    }

    {
      height = 50;
      minLength = 750;
      location = "bottom";
      alignment = "center";
      floating = true;
      hiding = "autohide";
      # lengthMode = "fit";
      opacity = "opaque";

      widgets = [
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
      ];
    }
  ];
}
