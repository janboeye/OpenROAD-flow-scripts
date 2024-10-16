export DESIGN_NAME = XSTop
export PLATFORM    = nangate45

export DESIGN_NICKNAME = xiangshan
#export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NAME)/*.v))
#export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/XSTop.v
export VERILOG_FILES = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_16.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_10.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_20.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_21.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_22.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_0_4.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_0_5.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_0_6.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_0_7.v \
                       ./designs/src/$(DESIGN_NAME)/xstop.v

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export ADDITIONAL_LEFS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*.lef))
export ADDITIONAL_LIBS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*.lib))

export SYNTH_MEMORY_MAX_BITS = 7962624
export SYNTH_ARGS =
export FLOW_VARIANT = three

export CORE_UTILIZATION = 40
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN = 5

export PLACE_DENSITY_LB_ADDON = 0.25
export TNS_END_PERCENT        = 100

