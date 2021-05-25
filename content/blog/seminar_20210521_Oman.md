+++
title = "[세미나] Dr. Luke David Oman"
date = 2021-05-25T09:19:47+09:00
categories = ["세미나"]
banner = "img/placeholder.png"
icon = "microphone"
+++
### Applications for High Resolution Global Coupled Chemistry Simulations  
<br>
#### Dr. Luke David Oman (NASA GSFC)
#### 2021년 05월 21일 (금) 11:00
#### ZOOM Meeting
<br>
#### Abstract

Increases in computing power are enabling higher resolution simulations of the coupled
atmospheric and chemical composition states and opening new opportunities to better
understand atmospheric processes. Here I will describe some recent work simulating the global
atmosphere with full stratospheric and tropospheric chemistry at 50 km and most recently 25
km spanning multiple decades with extensive collections of model output and discuss some of
the applications that are beginning to use this information.

The first simulation I will discuss is the Modern-Era Retrospective analysis for Research
and Application, Version 2 Global Modeling Initiative (MERRA-2 GMI), which is a simulation for
the atmospheric composition community, driven by MERRA-2 winds, temperature, and
pressure and coupled to the Global Modeling Initiative&#39;s (GMI) stratosphere-troposphere
chemical mechanism run at ~50 km horizontal resolution and output onto the native MERRA-2
grid (0.625 o  lon x 0.5 o  lat). The simulation is coupled to the Goddard Chemistry Aerosol
Radiation and Transport (GOCART) aerosol module to provide aerosol information that also
feedback to the chemistry. The simulation ran from 1980-2019 and has produced extensive
output available to all through OpenDAP and HTTPS download.

The second simulation is the Multi-Decadal Nitrogen Dioxide and Derived products from
Satellites (MINDS), which is a NASA MEaSUREs project to develop a consistent long-term multi-
satellite global trend-quality climate data record of tropospheric and stratospheric NO 2
columns. One aspect of this work is to produce consistent a-priori NO 2 profiles and ancillary
information from a single high-resolution global chemistry model for multiple UV-Vis
instruments from 1995 to present. We again use the Goddard Earth Observing System (GEOS)
model coupled to the GMI stratospheric and tropospheric chemical mechanism and GOCART
aerosol module. This simulation of over 25 years is performed at C360 (~25km) resolution on
the cubed sphere. Because of the size of the output files a limited set was done at 0.25
longitude by 0.25° latitude and more extensive output at 0.5° resolution.

Both simulations use the “replay” framework to constrain the dynamics using MERRA-2
reanalysis to reproduce the meteorological state of the atmosphere to be as realistic as
possible. I will discuss some of the recent work to include a satellite instrument swath sampler,
using two-line element (TLE) orbital files, to sample the model at its native vertical resolution at
the same longitude, latitude, and time as each instrument measurement. In addition to NO 2 ,
the satellite instrument swath output includes O 3 , CH 2 O, SO 2 , and other UV/Vis constituents. A
number of instrument teams are just beginning to utilize this information in future retrieval and
algorithm development.

