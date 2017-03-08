opts := 
opts += -xelatex
opts += -shell-escape

cnt := 
cnt += -ch -inc -merge

LATEXFLAGS := $(opts)
CNTFLAGS := $(cnt)
pdf : main.tex
	latexmk $(LATEXFLAGS) $< 

wordcnt : main.tex
	texcount $< $(CNTFLAGS)

clean :
	latexmk -C && rm main.bbl
