CXXFLAGS := -I. -I./apu/bapu \
	-fpermissive \
	-std=c++0x \
	-Wno-delete-abstract-non-virtual-dtor -Wno-misleading-indentation \
	-Wno-user-defined-warnings -Wno-empty-body -Wno-unused -Wno-deprecated \
	-Wno-int-to-pointer-cast -Wno-unsequenced -Wno-bitwise-op-parentheses \
	-D__WIN32_LIBSNES__ -DNDEBUG \
	-DHAVE_STRINGS_H -DHAVE_STDINT_H -DRIGHTSHIFT_IS_SAR -D__LIBRETRO__ -DSNES_JOY_READ_CALLBACKS

TARGET := snes9x.wbx

SRCS = $(ROOT_DIR)/apu/apu.cpp \
	$(ROOT_DIR)/apu/bapu/dsp/sdsp.cpp \
	$(ROOT_DIR)/apu/bapu/smp/smp.cpp \
	$(ROOT_DIR)/apu/bapu/smp/smp_state.cpp \
	$(ROOT_DIR)/bml.cpp \
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
    $(ROOT_DIR)/fscompat.cpp \
	$(ROOT_DIR)/fxinst.cpp \
	$(ROOT_DIR)/fxemu.cpp \
	$(ROOT_DIR)/gfx.cpp \
	$(ROOT_DIR)/globals.cpp \
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
	$(ROOT_DIR)/sha256.cpp \
	$(ROOT_DIR)/snapshot.cpp \
	$(ROOT_DIR)/snes9x.cpp \
	$(ROOT_DIR)/spc7110.cpp \
	$(ROOT_DIR)/srtc.cpp \
	$(ROOT_DIR)/tile.cpp \
	$(ROOT_DIR)/tileimpl-n1x1.cpp \
	$(ROOT_DIR)/tileimpl-n2x1.cpp \
	$(ROOT_DIR)/tileimpl-h2x1.cpp \
	$(ROOT_DIR)/bizhawk/cinterface.cpp

include ../common.mak
