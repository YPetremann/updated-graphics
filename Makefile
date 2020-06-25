COPY=\
	__base__/graphics/entity/loader/express-loader-structure.png\
	__base__/graphics/entity/loader/fast-loader-structure.png\
	__base__/graphics/entity/loader/loader-structure.png\
	__base__/graphics/icons/express-loader.png\
	__base__/graphics/icons/fast-loader.png\
	__base__/graphics/icons/loader.png

all: $(COPY)
	BASENAME=$$(basename $$(pwd));	cd ..; lua $$BASENAME/update.lua

release:
	BASENAME=$$(basename .)\
	cd ..\
	zip $$(BASENAME).zip $$(BASENAME)
clean: $(COPY)
	rm $^
	cd __add-loader__/graphics/; $(MAKE) clean

__base__/graphics/entity/loader/hr-express-loader-structure.png:__add-loader__/graphics/entity/loader/hr-express-loader-structure.png
__base__/graphics/entity/loader/hr-fast-loader-structure.png:__add-loader__/graphics/entity/loader/hr-fast-loader-structure.png
__base__/graphics/entity/loader/hr-loader-structure.png:__add-loader__/graphics/entity/loader/hr-loader-structure.png
__base__/graphics/entity/loader/express-loader-structure.png:__add-loader__/graphics/entity/loader/express-loader-structure.png
__base__/graphics/entity/loader/fast-loader-structure.png:__add-loader__/graphics/entity/loader/fast-loader-structure.png
__base__/graphics/entity/loader/loader-structure.png:__add-loader__/graphics/entity/loader/loader-structure.png
__base__/graphics/icons/express-loader.png:__add-loader__/graphics/icons/express-loader.png
__base__/graphics/icons/fast-loader.png:__add-loader__/graphics/icons/fast-loader.png
__base__/graphics/icons/loader.png:__add-loader__/graphics/icons/loader.png

__add-loader__/graphics/%: .FORCE
	cd __add-loader__/graphics/; make $(@:__add-loader__/graphics/%=%)

$(COPY):
	cp $^ $@

.FORCE:
