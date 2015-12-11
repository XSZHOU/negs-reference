options {

	temperature                   = 300

	kp_method                     = 0
	maximal_k_value               = 1.5 # in 1/nm
	num_k_points                  = 60
	
	num_energy_points             = 300
	
	min_energy                    = 1.2	# for n-doping
	max_energy                    = 2.1
#	min_energy                    = -0.5	# for p-doping
#	max_energy                    = 0.2
# remember to also change the doping file when switching between n- and p-doping!
# and change kpmethod=3!	
		
	StrainPolarization 			  = 0

	PotentialUnderrelaxation      = 0.1
	PulayMixing                   = 0
	Resonances                    = 0
	PMLResonances                 = 0
	IncludeImaginaryContactStates = 0
	IncoherentContacts            = 1
	IncoherentContactBroadening   = 1e-2
	
	# ---------------
	# Self Energies
	# ---------------
	ScatteringDecreaseFactor    = 0.05	# S(0) = (this)*S(end)
	ScatteringRampFactor        = 2.0	# S(i) * (this)*S(i-1)
	
	Buettiker                   = 0
	BuettikerParameter          = 0.01  # [eV]
	
	GolizadehMomentumRelaxation = 0
	GolizadehMomentumParameter  = 0.0001 # [eV^2]
	
	# Underrelaxation is mandatory for dephasing
	# SelfEnergyUnderrelaxation   = 0.5
	GolizadehDephasing          = 0
	GolizadehDephasingParameter = 0.0001 # [eV^2] sqrt(0.0001)=10meV 
	# ramping doesnt really pay off w/ Golizadeh dephasing
	# self-energy is completely differeent after each Poisson step
	# because it solely smoothes out the DoS
	
	OpticalPhonons              = 1
	LuisierSRpop                = 0
	
	AcousticPhonons             = 0
	
	IonizedImpurities           = 0
	
	# numerical options
	inner_errcrit               = 1e-6
}


experiment_0 {
	Source_voltage = 0.0
	Drain_min      = 0.0
	Drain_max      = -0.201
	Drain_step     = -0.05
	PotentialUnderrelaxation = 0.1
	LateUnderrelaxation      = 0.0
}

regions {
	
	region0_length = 12
	region0_dx     = 1.2
	region0_mat    = 0     # 0 = GaAs
	region0_molefr = 0.0
	region0_doping = 2e19
	
	region1_length = 96
	region1_dx     = 1.2
	region1_mat    = 0     # 0 = GaAs
	region1_molefr = 0.0
	region1_doping = 2e18
	
	region2_length = 12
	region2_dx     = 1.2
	region2_mat    = 0     # 0 = GaAs
	region2_molefr = 0.0
	region2_doping = 2e19
}

