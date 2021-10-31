UpgradeItems = {
  ["vehupgrade_chip"] = {
    name      = "ECU",
    boosts    = {
      [1] = "fInitialDriveForce"
    },
    modifiers = {
      [1] = 50.0
    },
  },

  ["vehupgrade_gearbox"] = {
    name      = "Gearbox",
    boosts    = {
      [1] = "fClutchChangeRateScaleUpShift", 
      [2] = "fClutchChangeRateScaleDownShift"
    },
      modifiers = {
      [1] = 1000.0,                             
      [2] = 1000.0,
    },
  },

  ["vehupgrade_tyres"] = {
    name      = "Tyres",
    boosts    = {
      [1] = "fTractionCurveMax", 
      [2] = "fTractionCurveMin"
    },
    modifiers = {
      [1] = 3.5,                
      [2] = 2.0,
    },
  },

  ["vehupgrade_brakes"] = {
    name      = "Brakes",
    boosts    = {
      [1] = "fBrakeForce"
    },
    modifiers = {
      [1] = 1000.0
    },
  },

  ["vehupgrade_driftchip"] = {
    name      = "Drift Chip",
    boosts    = {
      [1] = "fTractionCurveMax", 
      [2] = "fTractionCurveMin",
      [3] = "fInitialDriveForce",
      [4] = "fClutchChangeRateScaleUpShift", 
      [5] = "fClutchChangeRateScaleDownShift",
      [6] = "fInitialDragCoeff",
      [7] = "fDriveBiasFront",
      [8] = "fDriveInertia",
      [9] = "fTractionCurveLateral",
      [10] = "fInitialDriveMaxFlatVel",
      [11] = "fBrakeForce",
    },
    modifiers = {
      [1] = 0.9,                
      [2] = 1.2,
      [3] = 100.0,
      [4] = 2.5,                
      [5] = 2.5,
      [6] = 15.5,
      [7] = 0.0,
      [8] = 1.0,
      [9] = 24.5,
      [10] = 230.0,
      [11] = 1000.0,
    },
  },

  ["vehupgrade_racechip"] = {
    name      = "Race Chip",
    boosts    = {
      [1] = "fTractionCurveMax", 
      [2] = "fTractionCurveMin",
      [3] = "fInitialDriveForce",
      [4] = "fClutchChangeRateScaleUpShift", 
      [5] = "fClutchChangeRateScaleDownShift",
      [6] = "fBrakeForce",
    },
    modifiers = {
      [1] = 3.5,                
      [2] = 2.0,
      [3] = 50.0,
      [4] = 5000.0,                
      [5] = 1000.0,
      [6] = 1000.0,
    },
  },
}