PYTHON3=/Users/jperras/goinfre/.brew/bin/python3

current_dir = $(shell pwd)

COLLEEN_SRC=$(current_dir)/Colleen.py  
GRACE_SRC=$(current_dir)/Grace.py  
SULLY_SRC=$(current_dir)/Sully.py  

all : Colleen Grace Sully

Colleen :
	@$(PYTHON3) $(COLLEEN_SRC)
Grace :
	$(PYTHON3) $(GRACE_SRC)
Sully :
	$(PYTHON3) $(SULLY_SRC)

clean :
	rm -rf Grace_kid.py
	
fclean : clean
	rm -f Sully_*

re : fclean all