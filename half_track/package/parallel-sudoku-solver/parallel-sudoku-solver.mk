################################################################################
#
# parallel-sudoku-solver
#
################################################################################

PARALLEL_SUDOKU_SOLVER_VERSION = c6b2d79cda59a2faf1fcafc505f9809a1bdd2dd3
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
