CC = gcc

NASMFLAGS = -f macho64 
NASM = nasm

COLLEEN_SRC=Colleen.s
COLLEEN_OUT=Colleen
GRACE_SRC=Grace.s
GRACE_OUT=Grace
SULLY_SRC=Sully.s
SULLY_OUT=Sully

CFLAGS = -Wall -Wextra -Werror -fsanitize=address 
MKDIR = mkdir -p
OUT_DIR := out

COLLEEN_OBJS = $(addprefix $(OUT_DIR)/,$(COLLEEN_SRC:%.s=%.o))
GRACE_OBJS = $(addprefix $(OUT_DIR)/,$(GRACE_SRC:%.s=%.o))
SULLY_OBJS = $(addprefix $(OUT_DIR)/,$(SULLY_SRC:%.s=%.o))

$(OUT_DIR)/%.o:%.s
	$(MKDIR) $(@D)
	$(NASM) $(NASMFLAGS) $< -o $@


all : Colleen Grace Sully

Grace : $(GRACE_OBJS)
	$(CC) $(CFLAGS) -o $(GRACE_OUT) $(GRACE_OBJS)
	
Colleen : $(COLLEEN_OBJS)
	$(CC) $(CFLAGS) -o $(COLLEEN_OUT) $(COLLEEN_OBJS) 

Sully : $(SULLY_OBJS)
	$(CC) $(CFLAGS) -o $(SULLY_OUT) $(SULLY_OBJS) 

clean :
	rm -rf $(COLLEEN_OBJS)
	rm -rf $(GRACE_OBJS)
	rm -rf $(SULLY_OBJS)
	rm -rf Grace_kid.s
	rm -rf Sully_*.s
	rm -rf Sully_*.o
	
fclean : clean
	rm -f $(COLLEEN_OUT)
	rm -f $(GRACE_OUT)
	rm -f $(SULLY_OUT)
	rm -f Sully_*

re : fclean all