cask "focusdesk" do
  version "1.1.1"
  sha256 :no_check

  url "https://github.com/Dreffty/FocusDesk/releases/download/v#{version}/FocusDesk-macOS.dmg"
  name "FocusDesk"
  desc "Agenda, bloqueo de distracciones y reglas estudio-partida para macOS"
  homepage "https://github.com/Dreffty/FocusDesk"

  depends_on macos: ">= :sonoma"

  app "FocusDesk.app"

  zap trash: [
    "~/Library/Application Support/FocusDesk",
    "~/Library/LaunchAgents/com.articdia.focusdesk.guard.plist",
    "~/Library/Preferences/com.articdia.focusdesk.plist",
  ]
end
