+++
title = "[세미나] Dr. Jonathan Guerrette"
date = 2019-01-10T12:55:47+09:00
categories = ["세미나"]
banner = "img/placeholder.png"
icon = "microphone"
+++
###  Constraining aerosol emissions with 4D-Var in WRFDA 
<br>
#### Dr. Jonathan Guerrette (NCAR)
#### 2019년 1월 15일 (화) 11:00
#### 과학관 553호
<br>
#### Abstract

**Constraining aerosol emissions with 4D-Var in WRFDA**

Atmospheric aerosols are known to affect health, weather, and climate, but their impacts on
regional scales are uncertain due to heterogeneous source, transport, and transformation
mechanisms. This work establishes incremental four-dimensional variational (4D-Var) data
assimilation (DA) capabilities in a coupled meteorology-chemistry model (WRF-Chem) to
constrain chemical emissions (WRFDA-Chem). WRFDA-Chem is used to constrain
anthropogenic and biomass burning sources of black carbon aerosol (BC) throughout California
during the 2008 Arctic Research of the Composition of the Troposphere from Aircraft and
Satellites (ARCTAS) field campaign. We reduce the spread in total emitted BC mass between
two biomass burning inventories from a factor of x10 to only x2 across three days of
measurements. We also address the limited scalability of 4D-Var, which traditionally uses a
iterative optimization algorithm (e.g., conjugate gradient, CG) to approximate cost function
Hessian eigenmodes. A recently proposed alternative is the Randomized Incremental Optimal
Technique (RIOT), which uses an ensemble of linearized model integrations to perform the
Hessian eigen decomposition. The scalability and convergence properties of both algorithms are

evaluated in two on problems of varying size and degrees of nonlinearity, including the Lorenz-
96 system. This work provides a foundation for regional air quality forecasting, campaign

planning, and emissions constraint. The tools are extendible to other non-reactive or nearly non-
reactive chemical species, model domains, and time periods.
