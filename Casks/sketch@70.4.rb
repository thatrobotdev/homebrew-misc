cask "sketch@70.4" do
    version "70.4,109185"
    sha256 "fabdfe3ea882d6c1f597e9248c92e38fb843fa052eeb8558a1ce641d44291e2d"
  
    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :mojave"
  
    app "Sketch.app"
  
  end