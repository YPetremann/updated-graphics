.SECONDARY:

INDENT=0

.log/+/%:
	@printf "%$(INDENT)s";echo "\033[34m\033[1m[+] $(subst .log/+/,,$@)";
	@$(eval INDENT=$(shell echo $(INDENT)+3 | bc))

.log/-/%:
	@$(eval INDENT=$(shell echo $(INDENT)-3 | bc))
	@printf "%$(INDENT)s";echo " \033[32m\033[1m\\ $(subst .log/-/,,$@)"

.log/%:
	@printf "%$(INDENT)s";echo ">> $(subst .log/,,$@)"

.log/fileerr/%:
	@printf "%$(INDENT)s";echo "\033[31m\033[1m>> $(subst .log/fileerr/,,$@)\033[0m"

all:\
		.log/+/all\
		loader/loader\
		loader/express-loader\
		loader/fast-loader\
		loader/faster-loader\
		loader/extremely-fast-loader\
		.log/-/all\

clean:\
		.log/+/clean\
		.log/-/clean
	@rm -Rf .tmp
	@rm -Rf entity
#~ 	@rm -Rf icons

loader/%:\
		.log/+/loader/<<%>>\
		entity/loader/%-structure.png\
		icons/%.png\
		.log/-/loader/<<%>>
	@true

icons/%.png:\
		.log/+/icons/<<%>>.png\
		.log/-/icons/<<%>>.png
	@true

entity/loader/%-structure.png:\
		.log/+/entity/loader/<<%>>-structure.png\
		.tmp/loader/%-structure-*.png\
		.tmp/loader/%-structure-00.png\
		.tmp/loader/%-structure-01.png\
		.tmp/loader/%-structure-02.png\
		.tmp/loader/%-structure-03.png\
		.tmp/loader/%-structure-04.png\
		.tmp/loader/%-structure-05.png\
		.tmp/loader/%-structure-06.png\
		.tmp/loader/%-structure-07.png\
		.log/-/entity/loader/<<%>>-structure.png
	@mkdir -p $$(dirname $@)
	@montage -background transparent -mode concatenate -tile 4x $(word 2,$^) $@

.repl/00/%loader:\
		.log/+/.repl/00/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-00.png\
		.log/-/.repl/00/<<%>>loader
	@true

.repl/01/%loader:\
		.log/+/.repl/01/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-01.png\
		.log/-/.repl/01/<<%>>loader
	@true

.repl/02/%loader:\
		.log/+/.repl/02/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-02.png\
		.log/-/.repl/02/<<%>>loader
	@true

.repl/03/%loader:\
		.log/+/.repl/03/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-03.png\
		.log/-/.repl/03/<<%>>loader
	@true

.repl/04/%loader:\
		.log/+/.repl/04/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-04.png\
		.log/-/.repl/04/<<%>>loader
	@true

.repl/05/%loader:\
		.log/+/.repl/05/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-05.png\
		.log/-/.repl/05/<<%>>loader
	@true

.repl/06/%loader:\
		.log/+/.repl/06/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-06.png\
		.log/-/.repl/06/<<%>>loader
	@true

.repl/07/%loader:\
		.log/+/.repl/07/<<%>>loader\
		.tmp/underground-belt%underground-belt-structure-07.png\
		.log/-/.repl/07/<<%>>loader
	@true

.tmp/loader/%-structure-00.png:\
		.log/+/.tmp/loader/<<%>>-structure-00.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/00//%\
		.log/-/.tmp/loader/<<%>>-structure-00.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-00.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -28-24 \( $(IN1)-04.png +repage -crop 36x60+00+14 -trim \) -layers merge \
	-repage -28-24 \( $(IN1)-04.png +repage -crop 36x60+36+34 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-02.png +repage -crop 64x10+00+09 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-02.png +repage -crop 64x29+36+09 -trim \) -layers merge \
	-repage -28+05 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28+01 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-03 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-07 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-15 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-19 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-23 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-02.png +repage -crop 64x04+00+13 -trim \) -layers merge \
	-repage -28-00 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-09 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-18 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-02.png +repage -crop 64x02+36+29 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-01.png:\
		.log/+/.tmp/loader/<<%>>-structure-01.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/01//%\
		.log/-/.tmp/loader/<<%>>-structure-01.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-01.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -15-11 \( $(IN1)-05.png +repage -crop 20x64+00+00 -trim \) -layers merge \
	-repage -21-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -27-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -33-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -39-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -45-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -51-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -57-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -63-11 \( $(IN1)-05.png +repage -crop 5x27+10+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-03.png +repage -crop 64x64+32+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-03.png +repage -crop 4x20+28+6 -trim \) -layers merge \
	-repage -03-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -12-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -21-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -30-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -39-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -48-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-02.png:\
		.log/+/.tmp/loader/<<%>>-structure-02.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/02//%\
		.log/-/.tmp/loader/<<%>>-structure-02.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-02.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -28-24 \( $(IN1)-00.png +repage -crop 36x60+00+14 -trim \) -layers merge \
	-repage -28-24 \( $(IN1)-00.png +repage -crop 36x60+36+34 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-06.png +repage -crop 64x10+00+09 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-06.png +repage -crop 64x29+36+09 -trim \) -layers merge \
	-repage -28+05 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28+01 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-03 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-07 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-15 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-19 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-23 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-06.png +repage -crop 64x04+00+13 -trim \) -layers merge \
	-repage -28-00 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-09 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-18 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-06.png +repage -crop 64x02+36+29 -trim \) -layers merge \
	-repage -34-21 \( $(IN1)-01.png +repage -crop 23x64+00+26 -trim \) -layers merge \
	-repage -25-21 \( $(IN1)-01.png +repage -crop 23x64+00+26 -trim \) -layers merge \
	-repage -33-21 \( $(IN1)-03.png +repage -crop 13x64+19+26 -trim \) -layers merge \
	$@
.tmp/loader/%-structure-03.png:\
		.log/+/.tmp/loader/<<%>>-structure-03.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/03//%\
		.log/-/.tmp/loader/<<%>>-structure-03.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-03.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -10-11 \( $(IN1)-01.png +repage -crop 20x64+00+00 -trim \) -layers merge \
	-repage -16-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -22-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -34-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -40-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -52-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -58-11 \( $(IN1)-01.png +repage -crop 05x27+10+00 -trim \) -layers merge \
	-repage -41-11 \( $(IN1)-07.png +repage -crop 64x64+32+00 -trim \) -layers merge \
	-repage -41-11 \( $(IN1)-07.png +repage -crop 04x20+28+06 -trim \) -layers merge \
	-repage +02-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -07-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -16-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -25-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -34-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -43-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-04.png:\
		.log/+/.tmp/loader/<<%>>-structure-04.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/04//%\
		.log/-/.tmp/loader/<<%>>-structure-04.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-04.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -28-24 \( $(IN1)-00.png +repage -crop 36x60+00+14 -trim \) -layers merge \
	-repage -28-24 \( $(IN1)-00.png +repage -crop 36x60+36+34 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-06.png +repage -crop 64x10+00+09 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-06.png +repage -crop 64x29+36+09 -trim \) -layers merge \
	-repage -28+05 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28+01 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-03 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-07 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-15 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-19 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-23 \( $(IN1)-06.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-06.png +repage -crop 64x04+00+13 -trim \) -layers merge \
	-repage -28-00 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-09 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-18 \( $(IN1)-06.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-06.png +repage -crop 64x02+36+29 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-05.png:\
		.log/+/.tmp/loader/<<%>>-structure-05.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/05//%\
		.log/-/.tmp/loader/<<%>>-structure-05.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-05.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -15-11 \( $(IN1)-01.png +repage -crop 20x64+00+00 -trim \) -layers merge \
	-repage -21-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -27-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -33-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -39-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -45-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -51-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -57-11 \( $(IN1)-01.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -63-11 \( $(IN1)-01.png +repage -crop 5x27+10+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-07.png +repage -crop 64x64+32+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-07.png +repage -crop 4x20+28+6 -trim \) -layers merge \
	-repage -03-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -12-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -21-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -30-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -39-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -48-11 \( $(IN1)-07.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-06.png:\
		.log/+/.tmp/loader/<<%>>-structure-06.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/06//%\
		.log/-/.tmp/loader/<<%>>-structure-06.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-06.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -28-24 \( $(IN1)-04.png +repage -crop 36x60+00+14 -trim \) -layers merge \
	-repage -28-24 \( $(IN1)-04.png +repage -crop 36x60+36+34 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-02.png +repage -crop 64x10+00+09 -trim \) -layers merge \
	-repage -28+09 \( $(IN1)-02.png +repage -crop 64x29+36+09 -trim \) -layers merge \
	-repage -28+05 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28+01 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-03 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-07 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-15 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-19 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-23 \( $(IN1)-02.png +repage -crop 64x06+00+13 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-02.png +repage -crop 64x04+00+13 -trim \) -layers merge \
	-repage -28-00 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-09 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-18 \( $(IN1)-02.png +repage -crop 64x09+36+29 -trim \) -layers merge \
	-repage -28-27 \( $(IN1)-02.png +repage -crop 64x02+36+29 -trim \) -layers merge \
	-repage -34-21 \( $(IN1)-01.png +repage -crop 23x64+00+26 -trim \) -layers merge \
	-repage -25-21 \( $(IN1)-01.png +repage -crop 23x64+00+26 -trim \) -layers merge \
	-repage -33-21 \( $(IN1)-03.png +repage -crop 13x64+19+26 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-07.png:\
		.log/+/.tmp/loader/<<%>>-structure-07.png\
		.tmp/loader/%-structure-%02d.png\
		.repl/07//%\
		.log/-/.tmp/loader/<<%>>-structure-07.png
	$(eval IN1=$(patsubst .tmp/loader%loader-structure-07.png,.tmp/underground-belt%underground-belt-structure,$@))
	@convert $@ -alpha set -fill '#FFFFFF00' -draw 'color 0,0 reset' $@
	@convert $@ -background none \
	-repage -10-11 \( $(IN1)-05.png +repage -crop 20x64+00+00 -trim \) -layers merge \
	-repage -16-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -22-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -28-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -34-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -40-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -46-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -52-11 \( $(IN1)-05.png +repage -crop 10x27+10+00 -trim \) -layers merge \
	-repage -58-11 \( $(IN1)-05.png +repage -crop 05x27+10+00 -trim \) -layers merge \
	-repage -41-11 \( $(IN1)-03.png +repage -crop 64x64+32+00 -trim \) -layers merge \
	-repage -41-11 \( $(IN1)-03.png +repage -crop 04x20+28+06 -trim \) -layers merge \
	-repage +02-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -07-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -16-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -25-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -34-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	-repage -43-11 \( $(IN1)-03.png +repage -crop 09x14+21+25 -trim \) -layers merge \
	$@

.tmp/loader/%-structure-*.png:\
		.log/+/.tmp/loader/<<%>>-structure-*.png\
		.log/-/.tmp/loader/<<%>>-structure-*.png
	@true

.tmp/loader/%-structure-%02d.png:\
		.log/+/.tmp/loader/%-structure-%02d.png\
		.source/loader-structure.png\
		.log/-/.tmp/loader/%-structure-%02d.png
	@mkdir -p $$(dirname $@)
	@convert .source/loader-structure.png -crop 25%x50% -background transparent -gravity center -extent 96x64 $@

.tmp/underground-belt/%-structure-00.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-00.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-00.png
	@true

.tmp/underground-belt/%-structure-01.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-01.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-01.png
	@true

.tmp/underground-belt/%-structure-02.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-02.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-02.png
	@true

.tmp/underground-belt/%-structure-03.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-03.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-03.png
	@true

.tmp/underground-belt/%-structure-04.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-04.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-04.png
	@true

.tmp/underground-belt/%-structure-05.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-05.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-05.png
	@true

.tmp/underground-belt/%-structure-06.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-06.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-06.png
	@true

.tmp/underground-belt/%-structure-07.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-07.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-07.png
	@true

.tmp/underground-belt/%-structure-*.png:
		.log/+/.tmp/underground-belt/<<%>>-structure-04.png\
		.tmp/underground-belt/%-structure-%02d.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-04.png
	@true

.tmp/underground-belt/%-structure-%02d.png:\
		.log/+/.tmp/underground-belt/<<%>>-structure-%02d.png\
		.source/underground-belt/%-structure.png\
		.log/-/.tmp/underground-belt/<<%>>-structure-%02d.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -crop 25%x50% $@

.source/%.png:\
		.log/fileerr/.source/%.png
	@exit 1
.debug/%.png:\
		.log/+/.debug/<<%>>.png\
		.tmp/%.png\
		.FORCE\
		.log/-/.debug/<<%>>.png
	@mkdir -p $$(dirname $@)
	@convert $(word 2,$^) -filter Point -resize 800% $@
	@touch -d "$(date -R -r $@) + 1 second" .FORCE
