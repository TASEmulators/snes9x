CC = x86_64-nt64-midipix-g++

	# -Werror=pointer-to-int-cast -Werror=int-to-pointer-cast
	#-std=c99 -fomit-frame-pointer -fvisibility=hidden
CCFLAGS:= -I.. -I../apu/bapu \
	-I../../emulibc \
	-Wall -Werror=implicit-function-declaration \
	-fno-exceptions -fno-rtti -fpermissive \
	-std=c++0x \
	-D__WIN32_LIBSNES__ -DNDEBUG \
	-DHAVE_STRINGS_H -DHAVE_STDINT_H -DRIGHTSHIFT_IS_SAR -D__LIBRETRO__ \
	-O0 -g

TARGET = snes9x.exe

LDFLAGS = -Wl,--dynamicbase,--export-all-symbols

ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))/..
SRCS:= $(ROOT_DIR)/apu/apu.cpp \
	$(ROOT_DIR)/apu/bapu/dsp/sdsp.cpp \
	$(ROOT_DIR)/apu/bapu/dsp/SPC_DSP.cpp \
	$(ROOT_DIR)/apu/bapu/smp/smp.cpp \
	$(ROOT_DIR)/apu/bapu/smp/smp_state.cpp \
	$(ROOT_DIR)/bsx.cpp \
	$(ROOT_DIR)/c4.cpp \
	$(ROOT_DIR)/c4emu.cpp \
	$(ROOT_DIR)/cheats.cpp \
	$(ROOT_DIR)/cheats2.cpp \
	$(ROOT_DIR)/clip.cpp \
	$(ROOT_DIR)/conffile.cpp \
	$(ROOT_DIR)/controls.cpp \
	$(ROOT_DIR)/cpu.cpp \
	$(ROOT_DIR)/cpuexec.cpp \
	$(ROOT_DIR)/cpuops.cpp \
	$(ROOT_DIR)/crosshairs.cpp \
	$(ROOT_DIR)/dma.cpp \
	$(ROOT_DIR)/dsp.cpp \
	$(ROOT_DIR)/dsp1.cpp \
	$(ROOT_DIR)/dsp2.cpp \
	$(ROOT_DIR)/dsp3.cpp \
	$(ROOT_DIR)/dsp4.cpp \
	$(ROOT_DIR)/fxinst.cpp \
	$(ROOT_DIR)/fxemu.cpp \
	$(ROOT_DIR)/gfx.cpp \
	$(ROOT_DIR)/globals.cpp \
	$(ROOT_DIR)/logger.cpp \
	$(ROOT_DIR)/memmap.cpp \
	$(ROOT_DIR)/movie.cpp \
	$(ROOT_DIR)/msu1.cpp \
	$(ROOT_DIR)/obc1.cpp \
	$(ROOT_DIR)/ppu.cpp \
	$(ROOT_DIR)/stream.cpp \
	$(ROOT_DIR)/sa1.cpp \
	$(ROOT_DIR)/sa1cpu.cpp \
	$(ROOT_DIR)/screenshot.cpp \
	$(ROOT_DIR)/sdd1.cpp \
	$(ROOT_DIR)/sdd1emu.cpp \
	$(ROOT_DIR)/seta.cpp \
	$(ROOT_DIR)/seta010.cpp \
	$(ROOT_DIR)/seta011.cpp \
	$(ROOT_DIR)/seta018.cpp \
	$(ROOT_DIR)/snapshot.cpp \
	$(ROOT_DIR)/snes9x.cpp \
	$(ROOT_DIR)/spc7110.cpp \
	$(ROOT_DIR)/srtc.cpp \
	$(ROOT_DIR)/tile.cpp \
	$(ROOT_DIR)/bizhawk/cinterface.cpp

OBJ_DIR:=$(ROOT_DIR)/obj

_OBJS:=$(SRCS:.cpp=.o)
OBJS:=$(patsubst $(ROOT_DIR)%,$(OBJ_DIR)%,$(_OBJS))

$(OBJ_DIR)/%.o: $(ROOT_DIR)/%.cpp
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $< $(CCFLAGS)

all: $(TARGET)

.PHONY: clean all

$(TARGET) : $(OBJS)
	@$(CC) -o $@ $(LDFLAGS) $(CCFLAGS) $(OBJS) ../../emulibc/libemuhost.so

clean:
	rm -rf $(OBJ_DIR)
	rm -f $(TARGET)

print-%:
	@echo $* = $($*)
#install:
#	$(CP) $(TARGET) $(DEST_$(ARCH))
