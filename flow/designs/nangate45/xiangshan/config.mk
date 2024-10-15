export DESIGN_NAME = XSTop
export PLATFORM    = nangate45

export DESIGN_NICKNAME = xiangshan
#export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NAME)/*.v))
#export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/XSTop.v
export VERILOG_FILES = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/array_16.v \
                       ./designs/src/$(DESIGN_NAME)/xstop.v

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export ADDITIONAL_LEFS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*.lef))
export ADDITIONAL_LIBS = $(sort $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/*.lib))

export SYNTH_MEMORY_MAX_BITS = 7962624
export SYNTH_ARGS =
export FLOW_VARIANT = two

export CORE_UTILIZATION = 40
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN = 5

export PLACE_DENSITY_LB_ADDON = 0.25
export TNS_END_PERCENT        = 100

