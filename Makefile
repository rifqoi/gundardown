pdf:
	Rscript -e 'options(bookdown.render.file_scope = FALSE); bookdown::render_book("00-introduction.Rmd", output_format = "bookdown::pdf_book")'
	Rscript -e 'file.remove(list.files(pattern = "*.(log|mtc|maf|aux|bcf|lof|lot|out|toc)"), here::here("front-and-back-matter", "abbreviations.aux"))'


gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

bs4_book:
	Rscript --quiet _render.R "bookdown::bs4_book"

all:
	Rscript --quiet _render.R
