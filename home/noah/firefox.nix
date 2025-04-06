{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles = {
      default = {
        name = "Noah";

        id = 0;
        isDefault = true;

        extensions = {
          # https://nur.nix-community.org/repos/rycee/
          packages = with pkgs.nur.repos.rycee.firefox-addons; [
            sponsorblock
            ublock-origin
          ];
        };

        # about:config
        settings = {
          "extensions.autoDisableScopes" = 0;

          "extensions.pocket.enabled" = false;
          "browser.shell.checkDefaultBrowser" = false;
          "layers.acceleration.disabled" = false;

          # Disable spying
          "app.shield.optoutstudies.enabled" = false;
          "browser.newtabpage.activity-stream.feeds.telemetry" = false;
          "browser.newtabpage.activity-stream.telemetry" = false;
          "datareporting.healthreport.uploadEnabled" = false;
          "datareporting.policy.dataSubmissionEnabled" = false;
          "services.sync.prefs.sync.app.shield.optoutstudies.enabled" = false;
          "toolkit.telemetry.archive.enabled" = false;
          "toolkit.telemetry.bhrPing.enabled" = false;
          "toolkit.telemetry.enabled" = false;
          "toolkit.telemetry.firstShutdownPing.enabled" = false;
          "toolkit.telemetry.newProfilePing.enabled" = false;
          "toolkit.telemetry.reportingpolicy.firstRun" = false;
          "toolkit.telemetry.server" = "";
          "toolkit.telemetry.shutdownPingSender.enabled" = false;
          "toolkit.telemetry.unified" = false;
          "toolkit.telemetry.updatePing.enabled" = false;
        };
      };
    };
  };
}
