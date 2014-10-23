require(tcltk)
ReturnVal <- tkmessageBox(title = "Probability Program",
    message = "Would you like to run the program?", icon = "question", type = "yesno", default = "yes")

tclRequire("BWidget")
tt <- tktoplevel()
tkgrid(tklabel(tt,text="What distribution would you like to run? "))
distribution <- c("Hypergeometric, Binomial, Geometric")
comboBox <- tkwidget(tt,"ComboBox",editable=FALSE,values=distribution)
tkgrid(comboBox)

OnOk <- function()
{
    distributionChoice <- distribution[as.numeric(tclvalue(tkcmd(comboBox,"getvalue")))+1]
    tkdestroy(tt)
}
OK.but <-tkbutton(tt,text="   OK   ",command=OnOK)
tkgrid(OK.but)
tkfocus(tt)
