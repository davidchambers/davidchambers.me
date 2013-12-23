nginx.conf: nginx.conf.default
	sed 's!<ROOT>!$(abspath $(@D))/public!' $< > $@
