APP_NAME = WSNDemo_End_m7
PROJECT_NAME = deRFarm7
CONFIG_NAME = All_deRFarm7_At91sam7x512_Rf231_Gcc
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf230B_Gcc

#PROJECT_NAME = SAM7X_EK
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf230B_Gcc
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf230B_Gcc
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf231_Gcc
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf231_Gcc
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf212_Gcc
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf212_Gcc
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf230B_Iar
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf230B_Iar
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf231_Iar
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf231_Iar
#CONFIG_NAME = All_Sam7xEk_At91sam7x256_Rf212_Iar
#CONFIG_NAME = All_Sec_Sam7xEk_At91sam7x256_Rf212_Iar

all:
	make -C makefiles/$(PROJECT_NAME) -f Makefile_$(CONFIG_NAME) all APP_NAME=$(APP_NAME)

clean:
	make -C makefiles/$(PROJECT_NAME) -f Makefile_$(CONFIG_NAME) clean APP_NAME=$(APP_NAME)
