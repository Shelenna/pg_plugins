# Global makefile for pg_plugins

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

SUBDIRS = blackhole	\
	blackhole_am	\
	compress_test	\
	count_relations	\
	decoder_raw	\
	hello_notify	\
	hello_signal	\
	hello_world	\
	hmac_funcs	\
	hook_utility	\
	jsonlog		\
	kill_idle	\
	mcxtalloc_test	\
	object_hooks	\
	overflow	\
	passwordcheck_extra	\
	pg_fix_truncation	\
	pg_panic	\
	pg_rep_state	\
	pg_rusage	\
	pg_sasl_prepare	\
	pg_statvfs	\
	pg_swap_pages	\
	pg_trunc2del	\
	pg_wal_blocks	\
	pgmpc		\
	receiver_raw	\
	scram_utils	\
	wal_utils

# This can only be compiled on Linux.
ifeq ($(PORTNAME), linux)
SUBDIRS += pg_mark_glibc
endif

$(recurse)
$(recurse_always)
