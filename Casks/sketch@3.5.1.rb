cask "sketch@3.5.1" do
    version "3.5.1"
    sha256 "f5ee1e689c941bf480fcc7a462347ca45d9ec94dde8395e79a879e12882f643e"
  
    url "https://download.sketch.com/sketch-#{version}.zip"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :yosemite"
  
    app "Sketch.app"
  
  end