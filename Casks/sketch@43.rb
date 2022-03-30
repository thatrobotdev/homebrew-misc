cask "sketch@43" do
    version "43,38999"
  
    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :mojave"
  
    app "Sketch.app"
  
  end