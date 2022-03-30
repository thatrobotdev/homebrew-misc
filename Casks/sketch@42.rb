cask "sketch@42" do
    version "42"
  
    url "https://download.sketch.com/sketch-#{version}.zip"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :el_capitan"
  
    app "Sketch.app"
  
  end