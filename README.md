# homebrew-sketch-versions

This is a [homebrew](https://brew.sh/) tap with casks for outdated sketch versions.

## Why does this exist

Sketch has a legacy licensing system where your Sketch license can only activate a specific version. When downloading the most recent Sketch version from homebrew, I found that my license key was outdated, so I wasn't able to use the latest version of Sketch. I wanted an easy way to download outdated versions, so I created this tap and released it publically so that anyone else with the same problem can benefit from the tap. 

## How do I install these formulae?

After you [install Homebrew](https://docs.brew.sh/Installation), run the following command:

`brew install thatrobotdev/sketch-versions/<formula>`

Or `brew tap thatrobotdev/sketch-versions` and then `brew install <formula>`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Contributing

### Adding a new Sketch version

It's really easy to add a sketch version if the one you want to download isn't already added! Just create a new `sketch@[version name].rb` file in the `Casks` folder, and base it off of a file that is near the version that you are making a cask for. Usually, you shouldn't need to change much.

```ruby
`cask "sketch@[version name]" do
    version "[full version]"
  
    url "[download url]"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :[version]"
  
    app "Sketch.app"
  
  end
```

- Replace `[version name]` with the name of the version, for example: `85`, `81.1`, `3.7.1`
- Replace `[full version]` depending on how the version is formatted in the direct download URL.
    - https://download.sketch.com/sketch-3.8.0.zip -> "3.8.0"
    - https://download.sketch.com/sketch-39.zip -> "39"
    - https://download.sketch.com/sketch-44-41411.zip -> "44,41411" **Special case:** use a comma between the major and the minor version number
- Replace `[download url]` with one of two options, depending on how the direct download URL is formatted:
    - If the URL looks like https://download.sketch.com/sketch-44-41411.zip -> https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip
    - If the URL looks like https://www.sketch.com/updates/#:~:text=Download%20Sketch%20Version%203.2 -> https://download.sketch.com/sketch-#{version}.zip
- Replace `[version]` with the earliest macOS version that the program requires.

    [The available values for macOS releases are:](https://docs.brew.sh/Cask-Cookbook#depends_on-macos)

    | symbol             | corresponding release
    | -------------------|----------------------
    | `:yosemite`        | `10.10`
    | `:el_capitan`      | `10.11`
    | `:sierra`          | `10.12`
    | `:high_sierra`     | `10.13`
    | `:mojave`          | `10.14`
    | `:catalina`        | `10.15`
    | `:big_sur`         | `11.0`
    | `:monterey`        | `12.0`

### Adding a SHA256 hash

A lot of these files have been created by hand, which means that most of them haven't been downloaded, tested, or checked against a hash. 

If you get the warning `No checksum was provided for this cask.` when downloading a cask, that means that the cask is missing a `sha256` field!

The warning message will also say something like:

    For your reference, the checksum is:
    sha256 "f5ee1e689c941bf480fcc7a462347ca45d9ec94dde8395e79a879e12882f643e"

You can take that string, and plop it into one of the rb files like so:
  

```ruby
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
```
Thanks for making these downloads a safer process!