# solar-data
Visualizations of data from my PV systems.

Currently, I just have scripts that clean up data exported from Green Mountain Power, and then perform basic visualizations and summaries.

My next step is to generalize the data pre-processor, so that the visualization script can can consume data from multiple data sources (e.g. I get data for my other system via [My SunPower](https://login.mysunpower.com/) )

## Process

My current (manual) process:

### Data Prep
I perform these steps when downloading new data (1-2 times a month). This process is certainly more manual than it needs to be, but suffices for this hobby code:
* Download data from [Green Mountain Power](https://greenmountainpower.com/account/usage) to my local machine
* Copy these files to the `./data` folder in this repo
* Run `./util/remove-text-from-raw-files.bash` locally to remove PID from the data files
* Add the new files to git and commit
* Copy data to my Google Drive folder (`My Drive/Data/Solar`)
* Open `./nb/Clean_GMP_Solar_Data.ipynb` in Colab and run it. This produces a clean input file.

### Visualization
* Open `./nb/Solar Viz.ipynb` in Colab and run it. This generates a bunch of visualizations.
