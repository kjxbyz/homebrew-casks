cask "picguard" do
  version "1.0.4+421"
  sha256 "7470be6afa03dfe4a17475a947c6eb7d192c4b83f8435cb4c3c99562921e4c3c"

  url "https://github.com/picguard/picguard/releases/download/v#{version}/PicGuard_#{version}_macos_universal.dmg",
      verified: "github.com/picguard/picguard/"
  name "PicGuard"
  desc "Your pictures, your signature"
  homepage "https://picguard.app/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "PicGuard.app"

  zap trash: [
    "~/Library/Application Support/PicGuard",
    "~/Library/Caches/com.kjxbyz.picguard",
    "~/Library/Caches/PicGuard",
    "~/Library/Preferences/com.kjxbyz.picguard.plist",
    "~/Library/Saved Application State/com.kjxbyz.picguard.savedState",
  ]
end
