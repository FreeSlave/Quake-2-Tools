
CFLAGS = -c -pthread -I../../common -O2
CFLAGS += $(USER_FLAGS)
LDFLAGS = $(USER_FLAGS) -pthread
BINDIR = ../bin
BUILDDIR = ../build
ODIR = "$(BUILDDIR)/qrad3"

EXEBASE = qrad3
EXE = $(BINDIR)/qrad3
all: $(EXE)

_next:
	make "CFLAGS = -c -g -I../../common" "ODIR = next"
	
_irix:
	make "CFLAGS = -c -Ofast=ip32_10k -I../../common -Xcpluscomm" "LDFLAGS = -Ofast=ip32_10k" "ODIR = irix"
	
_irixdebug:
	make "CFLAGS = -c -g -I../../common -Xcpluscomm" "LDFLAGS = " "ODIR = irix"
	
_irixinst:
	make "CFLAGS = -c -Ofast=ip32_10k -I../../common -Xcpluscomm" "LDFLAGS = -Ofast=ip32_10k" "ODIR = irix"
	cp irix/$(EXEBASE) /limbo/quake2/bin_irix
	
_irixclean:
	rm -f irix/*.o irix/$(EXEBASE)

_osf:
	make "CFLAGS = -c -O4 -I../../common -threads" "LDFLAGS = -threads" "ODIR = osf"
	
clean:
	rm -f $(ODIR)/*.o $(EXE)

install:
	cp $(EXE) $(DESTDIR)/usr/local/bin


FILES = $(ODIR)/bspfile.o $(ODIR)/cmdlib.o $(ODIR)/lbmlib.o $(ODIR)/mathlib.o $(ODIR)/scriplib.o $(ODIR)/polylib.o $(ODIR)/qrad3.o $(ODIR)/threads.o $(ODIR)/trace.o $(ODIR)/lightmap.o $(ODIR)/patches.o

dirs:
	-mkdir -p $(BINDIR)
	-mkdir -p $(ODIR)

$(EXE) : dirs $(FILES)
	cc -o $(EXE) $(LDFLAGS) $(FILES) -lm
	
$(ODIR)/qrad3.o : qrad3.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/patches.o : patches.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/trace.o : trace.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/vismat.o : vismat.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/lightmap.o : lightmap.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i

$(ODIR)/cmdlib.o : ../../common/cmdlib.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/lbmlib.o : ../../common/lbmlib.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/mathlib.o : ../../common/mathlib.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/polylib.o : ../../common/polylib.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/scriplib.o : ../../common/scriplib.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/threads.o : ../../common/threads.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
$(ODIR)/bspfile.o : ../../common/bspfile.c
	cc $(CFLAGS) -E $? | tr -d '\015' > /tmp/temp.i
	cc $(CFLAGS) -o $@ /tmp/temp.i
