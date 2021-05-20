test-all:
	ls -lh examples
	for FILE in `find example -name "INPUT_*"`; do \
		tclsh $(OOMMFTCL) boxsi +fg $$FILE -exitondone 1; \
		ls -lh examples; \
	done
