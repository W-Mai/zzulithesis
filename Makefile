# Copyright (c) 2022 W-Mai
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

THESIS_PATH = ./thesis
SRCS 		= $(wildcard $(THESIS_PATH)/*)
OBJ 		= $(patsubst $(THESIS_PATH)/%,%,$(SRCS))
OUT_DIR 	= $(patsubst %,%/out,$(SRCS))

list : $(SRCS)
	@echo $(OBJ)

$(OBJ) : $(THESIS_PATH)/$@/*
	cd $(THESIS_PATH)/$@ && \
		latexmk
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	@echo %%%%% Successfully %% With: $@
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clean : $(SRCS)
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%
	@echo %%%%% cleaning... %%%%%%%%
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%
	@rm -rf $(OUT_DIR)
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%
	@echo %%%%% finished. %%%%%%%%%%
	@echo %%%%%%%%%%%%%%%%%%%%%%%%%%

all : $(OBJ)
	