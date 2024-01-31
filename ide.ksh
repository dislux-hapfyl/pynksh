#!/usr/bin/env ksh
. ./s.lang.ksh

sheimpang
mainwin
cfg '' 'bg="black"'

pww pwr vertical 2 self
pk pwr 1 both
cfg .pwr 'bg="green"'

kbind '' 'Control-w' load
fnc load

def 'self,even=None' load
clsi l LoadRoot
defs 'pwr.add(self.l)'


clsd LoadRoot
cfg '' 'bg="#555"'
pww pw horizontal 2 self
pk pw 1 both
cfg .pw 'bg="#222"'

clsi shpi ShPad
cfg .shpi.msg 'fg="orange", text="Spec"'
cfg .shpi.text 'fg="orange", font=("Iosevka", 14),insertbackground="orange",cursor="gumby"'
defs 'shpi.ext = ".lang.ksh"'
opft 'shpi.text' '"s.lang.ksh"'
defs 'pw.add(self.shpi)'


clsi shpi2 ShPad
cfg .shpi2.msg 'fg="red"'
cfg .shpi2.text 'font=("Iosevka", 14),highlightcolor="red",cursor="pencil"'
defs 'shpi2.ext = ".ksh"'
opft 'shpi2.text' '"ide.ksh"'
defs 'pw.add(self.shpi2)'


clsi pypi PyPad
cfg .pypi.msg 'fg="green"'
cfg .pypi.text 'fg="green",font=("Iosevka", 10),insertbackground="green",cursor="gobbler",bg="#222"'
defs 'pw.add(self.pypi)'


#Spec & Code Pad
clsd ShPad
defs 'ext =""'
defs 'filename = ""'
cfg '' 'bg="#555"'

labelw msg '#$%&*^'
pk msg 0 both

entryw entry 6 
pk entry 0 none 

textw text
defx 'Percolator(self.text).insertfilter(ColorDelegator())'
pk text 1 both

fnc keys

def 'self' keys
kbind .text 'Control-Return' cli
kbind .text 'Control-l' clearbuf
kbind .entry 'Control-s' save
kbind .text 'KeyRelease' live

def 'self,event=None' live
defm pypi.outputPy

def 'self,event=None' save
defx 'ext = self.ext'
eget entry file
defs 'entry.insert(0, f"{file}")'
defs 'filename = f"{file}{ext}"'
tget text data '1.0' 'end-1c'
wrtf data self.filename
cfg .msg "text=f\"$datenow {self.filename} Saved!\""
defm pypi.outputPy

def 'self,event' clearbuf
tdel text '1.0' 'end'

def 'self,event' cli
getln text com
shsp text com
tdel text 'insert linestart-1c' 'insert lineend'



#Output Pad
clsd PyPad 
cfg '' 'bg="#555"'

btnw lnbtn Go launch
pk lnbtn 0 none

labelw msg 'Output'
pk msg 0 both

textw text
pk text 1 both
defx 'Percolator(self.text).insertfilter(ColorDelegator())'

def 'self,event=None' clearbuf
tdel text '1.0' 'end'

def 'self,event=None' outputPy
fnc clearbuf
defx 'filen = self.master.shpi2.text.get("1.0", "end")'
defx 'com = f"ksh {filen}"'
shsp text com

def 'self,event=None' launch
defx 'com = f"ksh {self.master.shpi2.filename}| python3"'
shsp text com
cfg .msg "text=f\"$datenow {self.master.shpi2.filename} Execution Done!\""

exe 'pyrathe.pynksh'

#cat ide.ksh | awk '{gsub("launchbtn", "lnbtn", $0); print}'
