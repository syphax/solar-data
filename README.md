# solar-data
Visualizations of data from my PV systems.

Currently, I just have scripts that clean up data exported from Green Mountain Power, and then perform basic visualizations and summaries.

My next step is to generalize the data pre-processor, so that the visualization script can can consume data from multiple data sources (e.g. I get data for my other system via [My SunPower](https://login.mysunpower.com/) )

My current (manual) process:
* Download data from [Green Mountain Power](https://greenmountainpower.com/account/usage)
* Store data in the ./data folder
* Run `./util/remove-text-from-raw-files.bash` to remove PID from the data files
* Copy data to my Google Drive folder (`My Drive/Data/Solar`)
* Open `./nb/Clean_GMP_Solar_Data.ipynb` in Colab and run it. This produces a clean input file.
* Open `./nb/Solar Viz.ipynb` in Colab and run it. This generates a bunch of visualizations.
