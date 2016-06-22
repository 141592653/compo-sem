NAME=minirien

OCAMLC=ocamlc -g

ML=$(wildcard *.ml) parse.ml lex.ml
MLI=$(wildcard *.mli) parse.mli

$(NAME): ast.cmo lex.cmo parse.cmo main.cmo
	$(OCAMLC) -o $@ $+

%.cmo: %.ml
	$(OCAMLC) -c $<
%.cmi: %.mli
	$(OCAMLC) -c $<
%.ml: %.mly
	ocamlyacc -v $<
%.mli: %.mly
	ocamlyacc -v $<
%.ml: %.mll
	ocamllex $<

-include .depend
.depend: $(ML) $(MLI)
	ocamldep $(ML) $(MLI) > $@

clean:
	rm -f lex.ml lex.mli parse.ml parse.mli
	rm -f *.cmo *.cmi $(NAME)
	rm -f .depend

tarball:
	rm -rf tp
	mkdir tp
	cp Makefile ast.ml main.ml tp
	cp lex_skel.mll tp/lex.mll
	cp parse_skel.mly tp/parse.mly
	tar cjvf tp.tar.gz tp
