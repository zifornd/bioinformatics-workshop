library(rmarkdown)

render("index.Rmd")
render("home_content.Rmd")
render("home_info.Rmd")
render("home_precourse.Rmd")
render("home_schedule.Rmd")

# Slides

render("slide_introduction.Rmd", "xaringan::moon_reader")
render("slide_software.Rmd", "xaringan::moon_reader")
#render("slide_sequencing.Rmd", "xaringan::moon_reader") 
render("slide_sources.Rmd", "xaringan::moon_reader")
render("slide_formats.Rmd", "xaringan::moon_reader")
render("slide_visualization.Rmd", "xaringan::moon_reader")
render("slide_quality.Rmd", "xaringan::moon_reader")
render("slide_alignment.Rmd", "xaringan::moon_reader")
render("slide_mapping.Rmd", "xaringan::moon_reader")
render("slide_sam.Rmd", "xaringan::moon_reader")
render("slide_rnaseq.Rmd", "xaringan::moon_reader")
render("slide_microarray.Rmd", "xaringan::moon_reader")
render("slide_epidemiology.Rmd", "xaringan::moon_reader")

# Labs

render("lab_software.Rmd")
render("lab_sequencing.Rmd")
render("lab_formats.Rmd")
render("lab_visualization.Rmd")
render("lab_quality.Rmd")
render("lab_mapping.Rmd")
render("lab_sam.Rmd")
render("lab_rnaseq.Rmd")
