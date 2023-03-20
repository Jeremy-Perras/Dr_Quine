PYTHON3=/Users/jperras/goinfre/.brew/bin/python3

COLLEEN_SRC=/Users/jperras/Desktop/Dr_Quine-42/PYTHON/Colleen.py  
GRACE_SRC=/Users/jperras/Desktop/Dr_Quine-42/PYTHON/Grace.py  
SULLY_SRC=/Users/jperras/Desktop/Dr_Quine-42/PYTHON/Sully.py  

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