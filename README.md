# TeamCityProduction
TeamCity production repository containing the build configurations for:
* BeamtimeDaqAccess
* pydoocs

The build agent for TeamCity needs the following virtual python environments and dependencies:
* BeamtimeDaqAccess:
  * virtual environments: beamtimedaqaccess{27, 35, 36, 37}
  * dependencies: h5py, natsort, numpy, mock, pyhamcrest, coverage, teamcity-messages (via pip), conda-build
* pydoocs:
