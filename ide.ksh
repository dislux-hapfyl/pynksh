#!/usr/bin/env ksh
. ./pynksh.lang.ksh

sheimpang

mainwin
cfg '' 'bg="black"'

pww pwr vertical 1 self
pk pwr 1 both
cfg .pwr 'bg="pink"'

kbind '' 'Control-w' load 

fnc load ''

def load 'self,even=None'
clsi l LoadRoot
fnc pwr.add self.l

clsd LoadRoot

cfg '' 'bg="#555"'
pww pw horizontal 3 self
pk pw 1 both
cfg .pw 'bg="#222"'

clsi shpi ShPad

cfg .shpi.msg 'fg="orange", text="Spec"'
cfg .shpi.text 'fg="orange", font=("Iosevka", 14),insertbackground="red",cursor="gumby"'
defi self.shpi.ext '".lang.ksh"'
opft 'shpi.text' '"pynksh.lang.ksh"'
tins 'shpi.entry' 0 pynksh
fnc pw.add self.shpi

clsi shpi2 ShPad

cfg .shpi2.msg 'fg="pink"'
cfg .shpi2.text 'font=("Iosevka", 14),highlightcolor="green",insertbackground="green",cursor="pencil"'
defi self.shpi2.ext '".ksh"'
opft 'shpi2.text' '"ide.ksh"'
tins 'shpi2.entry' 0 ide
fnc pw.add self.shpi2


clsi pypi PyPad

cfg .pypi.msg 'fg="green"'
cfg .pypi.text 'fg="orange",font=("Iosevka", 14),insertbackground="orange",cursor="gobbler",bg="#222"'
fnc pw.add self.pypi


#Spec & Code Pad
clsd ShPad

defi ext '""'
defi filename '""'
cfg '' 'bg="#555"'

labelw msg '#$%&*^ pynksh'
pk msg 0 both

entryw entry 10 
pk entry 0 none
cfg .entry 'font=("Iosevka", 14),fg="green"'
textw text
defx 'Percolator(self.text).insertfilter(ColorDelegator())'
pk text 1 both

fnc keys ''

def keys 'self'
kbind .text 'Control-Return' cli
kbind .text 'Control-l' clearbuf
kbind .text 'Control-s' save
kbind .text 'KeyRelease' live

def live 'self,event=None'
defm pypi.outputPy

def save 'self,event=None'
defi ext self.ext
eget entry file
tins entry '0' '{file}'
defi self.filename 'f"{file}{ext}"'
tget text data '1.0' 'end-1c'
wrtf data self.filename
cfg .msg "text=f\"$datenow {self.filename} Saved!\""
defm pypi.outputPy

def clearbuf 'self,event'
tdel text '1.0' 'end'

def cli 'self,event'
getln text com
shsp text com
tins text 'insert linestart' '#'

#Output Pad
clsd PyPad 
cfg '' 'bg="#555"'

labelw msg 'Output'
pk msg 0 both

btnw lnbtn Go launch
cfg .lnbtn 'font=("Iosevka", 14),highlightcolor="green",highlightbackground="red"'
pk lnbtn 0 x

textw text
pk text 1 both
defx 'Percolator(self.text).insertfilter(ColorDelegator())'

def clearbuf 'self,event=None'
tdel text '1.0' 'end'

def outputPy 'self,event=None'
fnc clearbuf
defi filen 'self.master.shpi2.text.get("1.0", "end")'
defi com 'f"ksh {filen}"'
shsp text com

def launch 'self,event=None'
defi com  'f"ksh {self.master.shpi2.filename}| python3"'
shsp text com
cfg .msg "text=f\"$datenow Success!\""

exe 'pyrathe.pynksh'

#cat ide.ksh | awk '{gsub("launchbtn", "lnbtn", $0); print}'

