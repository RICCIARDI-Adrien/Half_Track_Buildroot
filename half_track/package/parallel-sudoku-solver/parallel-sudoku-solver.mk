################################################################################
#
# parallel-sudoku-solver
#
################################################################################

PARALLEL_SUDOKU_SOLVER_VERSION = eaf85366bc3ce145a2ec4f5456b7fd63cec3531c
PARALLEL_SUDOKU_SOLVER_SITE = $(call github,RICCIARDI-Adrien,Parallel_Sudoku_Solver,$(PARALLEL_SUDOKU_SOLVER_VERSION))

define PARALLEL_SUDOKU_SOLVER_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define PARALLEL_SUDOKU_SOLVER_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/Parallel_Sudoku_Solver $(TARGET_DIR)/usr/bin
    $(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/share/Parallel_Sudoku_Solver
    $(INSTALL) -D -m 0755 $(@D)/Tests/* $(TARGET_DIR)/usr/share/Parallel_Sudoku_Solver
endef

$(eval $(generic-package))
