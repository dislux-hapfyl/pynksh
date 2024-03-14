#!/usr/bin/env ksh

#pynksh.lang.ksh spec

#notes
#awk '$1 = toupper($1)'
#awk '/^c/{f=1}f{$0 = "#" $0}{print}'

#Globals
datenow="#$%&*^ {datetime.datetime.now().strftime('<%m.%d.%Y.%H:%M>')}"
in4="   " #3 spaces
in8="       " #7 spaces
ew=ew.widget

Fc1='"#ECCCA2"'

A='bg="#000"'
AA='bg="#222"' #Labels
B='fg="#EEE"'
C='cursor="heart"'
D='highlightbackground="#333"'
E="highlightcolor=$Fc1"
F="insertbackground=$Fc1"
G='relief="flat"'
H='font=("VictorMono", 12)'
I='padx=3'
J='pady=3'
RB='bg="#222"' #Root & Frame

SHEIMPANG() {
	cat <<EOF
#!/usr/bin/env python3
#z.lang_gen()
import re,os
import datetime
import subprocess

EOF
}

IMPORT() {
	typeset i="$1"
        echo "import $i"
}

IMPAS() {
	typeset i="$1"
	typeset a="$2"
        echo "import $i as $a"
}

FRM() {
	typeset lib="$1"
	typeset class="$2"
	echo "from $lib import $class"
}

MAINWIN() {
	cat <<EOF


class RootWindow(Tk):
    def __init__(self):
        super().__init__()
        self.configure($RB)
EOF

}

CLSI() {
	typeset n="$1"
	typeset c="$2"
	typeset p="$3"
	echo "$in8 self.$n = $c(self,$p)"
} 

CLSD() {
	typeset appName="$1"
	typeset p="$2"
	typeset s="$3"

	cat <<EOF

class $appName(Frame):
    def __init__(self, parent, $p):
        super().__init__(parent, $s)
        self.master = parent
        self.configure(bg="#222")
EOF
}

MFN() {
	typeset n="$1"
        echo "$in8 self.master.$n(self.master)"
}

MFC() {
	typeset n="$1"
	typeset p="$2"
        echo "$in8 self.master.$n($p)"
}

LFC() {
	typeset n="$1"
	typeset p="$2"
	typeset mp="$3"
	echo "$in8 $n($p)$mp"
}

ILFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4 $a($b)"
}

IILFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4$in4 $a($b)"
}

SFC() {
	typeset n="$1"
	typeset p="$2"
	echo "$in8 self.$n($p)"
}

SSFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8 self.$a(self.$b)"
}

ISFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4 self.$a($b)"
}


IISFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4$in4 self.$a($b)"
}


ISSFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4 self.$a(self.$b())"
}

IISSFC() {
	typeset a="$1"
	typeset b="$2"
	
	echo "$in8$in4$in4 self.$a(self.$b())"
}

IF() {
	typeset i="$1"
	echo "$in8 if $i:"
}

IIF() {
	typeset i="$1"
	echo "$in4$in8 if $i:"
}

IFFC() {
	typeset i="$1"
	typeset p="$2"
	echo "$in8 if $i($p):"
}

ELS() {
	echo "$in8 else:"
}

IELS() {
	echo "$in8$in4 else:"
}

RET() {
	typeset o="$1"
	echo "$in8 return $o"
}

RETS() {
	typeset o="$1"
	echo "$in8 return self.$o"
}

DEF() {
	typeset n="$1"
	typeset p="$2"
        echo "$in4 def $n($p):"
}

DEFS() {
	typeset n="$1"
	typeset p="$2"
        echo "$in4 def $n(self,$p):"
}

DEFE() {
	typeset n="$1"
        echo "$in4 def $n(self,event=None):"
}

DLV() {
	typeset i="$1"
	typeset v="$2"
	echo "$in8 $i = $v"
}

IDLV() {
	typeset i="$1"
	typeset v="$2"
	echo "$in8$in4  $i = $v"
}

DLSV() {
	typeset i="$1"
	typeset v="$2"
	echo "$in8 $i = self.$v"
}

DSV() {
	typeset i="$1"
	typeset v="$2"
	echo "$in8 self.$i = $v"
}

DSSV() {
	typeset i="$1"
	typeset v="$2"
	echo "$in8 self.$i = self.$v"
}

DLF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 $i = $f($p)"
}

IDLF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8$in4 $i = $f($p)"
}
DSFP() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 self.$i += $f($p)"
}

DLSF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	typeset mp="$4"
	echo "$in8 $i = self.$f($p)$mp"
}

IDLSF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	typeset mp="$4"
	echo "$in8$in4 $i = self.$f($p)$mp"
}

DLSFS() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 $i = self.$f(self.$p)"
}

DSSFS() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 self.$i = self.$f(self.$p)"
}
DSF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 self.$i = $f($p)"
}

DSSF() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 self.$i = self.$f($p)"
}

DSLFS() {
	typeset i="$1"
	typeset f="$2"
	typeset p="$3"
	echo "$in8 self.$i = $f(self.$p)"
}

SLST() {
	typeset n="$1"
	typeset li="$2"
	echo "$in8 self.$n = [$li]"
}

LLST() {
	typeset n="$1"
	typeset i="$2"
	echo "$in8 $n = [$i]"
}

WHILES()  {
	typeset n="$1"
	echo "$in8 while self.$n:"
}

KBIND() {
        typeset n="$1"
	typeset mod="$2"
	typeset c="$3"

	echo "$in8 self$n.bind(\"<$mod>\", self.$c)"
}

KBINDA() {
        typeset n="$1"
	typeset mod="$2"
	typeset c="$3"

	echo "$in8 self$n.bind_all(\"<$mod>\", self.$c)"
}

CFG() {
	typeset n="$1"
	typeset p="$2"
	echo "$in8 self$n.configure($p)"
}

TGET() {
	typeset n="$1"
	typeset i="$2"
	typeset s="$3"
	typeset f="$4"
	echo "$in8 $i = self.$n.get(\"$s\", \"$f\")"
}

TDEL() {
	typeset n="$1"
	typeset s="$2"
	typeset f="$3"
	echo "$in8 self.$n.delete(\"$s\", \"$f\")"
}

EGET() {
	typeset n="$1"
	typeset i="$2"
	echo "$in8 $i = self.$n.get()"
}

TINS() {
	typeset n="$1"
	typeset s="$2"
	typeset t="$3"
	echo "$in8 self.$n.insert(\"$s\", $t)"
}

GETLN() {
	typeset n="$1"
	typeset file="$2"
	echo "$in8 $file = self.$n.get(\"insert linestart\", \"insert lineend\")"
}

SHSP() {
	typeset n="$1"
	typeset lntxt="$2"
	cat <<EOF
        try:
            result = subprocess.run(
                $lntxt,shell=True,executable="/usr/bin/ksh",stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True, )
            if result.returncode == 0:
                self.$n.insert("end", f"{result.stdout}\n")
            else:
                self.$n.insert("1.0", f"#$%&*^ {datetime.datetime.now().strftime('%H:%M')} {result.stderr}\n")
        except Exception as e:
            self.$n.insert("1.0", f"#$%&*^ {datetime.datetime.now().strftime('%H:%M')} {str(e)}\n")
EOF
}

PYSP() {
	typeset n="$1"
	typeset lntxt="$2"
	cat <<EOF
        try:
            output = eval($lntxt, globals())
            self.$n.insert(
                "insert lineend",
                f" {output}",
            )
        except Exception as e:
            self.$n.insert(
                "1.0", f"#$%&*^ {datetime.datetime.now().strftime('%H:%M')} {str(e)}\n"
            )
           

EOF
}

WRTF() {
	typeset data="$1"
	typeset file="$2"
	cat <<EOF
        with open($file, "w") as file:
            file.write($data)

EOF
}

OPFT() {
	typeset n="$1"
	typeset file="$2"
	cat <<EOF
        f = open($file, "r")
        fileme = f.read()
        self.$n.insert("1.0", fileme)

EOF
}

FOR() {
	typeset i="$1"
	typeset l="$2"
	echo "$in8 for $i in $l:"
}

EXE() {
	typeset windowTitle="$1"
	cat <<EOF


if __name__ == '__main__':
    go = RootWindow()
    go.title("$windowTitle")
    go.mainloop()

EOF
}

PK() {
	typeset n="$1"
	typeset e="$2"
	typeset f="$3"
	typeset a="$4"
	echo "$in8 self.$n.pack(expand=$e,fill=\"$f\",$I,$J,$a)"
}

PL() {
	typeset n="$1"
	typeset x="$2"
	typeset y="$3"
	echo "$in8 self.$n.place(x=$x,y=$y)"
}

WPW() {
	typeset name="$1"
	typeset o="$2"
	typeset w="$3"
        cat <<EOF
        self.$name = PanedWindow(self,orient="$o",sashwidth=$w,relief="flat",showhandle=True,sashpad=1,$A)

EOF
}

#Entry
WNTRY() {
	typeset name="$1"
	typeset w="$2"
        cat <<EOF
        self.$name = Entry(self,width=$w,$A,$B,$C,$D,$E,$F,$G,$H)

EOF
}

WPBR(){
	typeset n="$1"
	typeset v="$2"
	typeset m="$3"
	cat <<EOF	
        self.$n = Progressbar(self, variable=self.$v, maximum=$m, mode='determinate')
EOF
}

WBTN() {
	typeset n="$1"
	typeset t="$2"
	typeset c="$3"
        cat <<EOF
        self.$n = Button(
            self,text=f"$t",command=self.$c,$A,$B,$C,$D,$E,$G,$H)

EOF
}

WNBK() {
	typeset n="$1"
        cat <<EOF
        self.$n = Notebook(self,padding=5,)

EOF
}

WLBX() {
	typeset n="$1"
	typeset w="$2"
	typeset h="$3"
        cat <<EOF
        self.$n = Listbox(self,width=$w,height=$h,$A,$B,$C,$D,$E,$G,$H)

EOF
}

WLABEL() {
	typeset n="$1"
	typeset t="$2"
        cat <<EOF
        self.$n = Label(self,$AA,$B,$H,text=f"$t")

EOF
}

WTEXT() {
	typeset name="$1"
        cat <<EOF
        self.$name = Text(self,wrap="word",insertwidth=7,undo=True,
                             padx=20,pady=10,spacing1=0,spacing3=0,
                             $A,$B,$C,$D,$E,$F,$G,$H)

EOF
}



#MyFuncs
#search and replace
snr() {
	typeset f="$1"
	typeset s="$2"
	typeset r="$3"
	awk "{gsub(\"$s\", \"$r\", \$0); print}" $f
}

#Definitions of words
DF() {
	typeset w="$1"
	curl -s "dict://dict.org/d:$w" 
}
dic() {
	typeset w="$1"
	DF $w | awk "{\$1=\"\"; print \$0 }" | grep -v "dict.org\|<auth>\|ok\|bye \["

}

SHOWKEY(){
	typeset f="$1"
	cat $f | grep Control | awk "{print \$2 \" \"\$3\"   \"\$4}"
}

#Comment out lines
COMO() {
	typeset f="$1"
	cat $f | awk "{print \"#\"\$0}"
}

#SysAdmin
SPKG() {
	typeset pkg="$1"
	dpkg -l | grep ^ii | awk "{ print \$2}" | grep $pkg | awk "{print \"apt remove \"\$0}"
}

SHPKG() {
	typeset NP=$(SPKG * |  wc -l)
	echo "$NP = pkgs installed " ; 
	SPKG * | awk "{print \$3}"
}

SHPY3() {
	SHPKG | grep python3 | wc -l ;SHPKG | grep python3 
}

alphabet() {
	for i in {0..9}; do echo -n "\"$i\" "; done
}
#	for i in $(seq 1 5); do echo "    typeset =\"\$$i\""; done

I() {
	typeset i=""
	typeset n="$1"
	typeset m="$2"
	integer x
	for ((x=0; x<n; x++)); do
 		i="${i} "
	done
	echo "${i}${m}"
}

