#!/usr/bin/ksh
#s.lang.ksh spec

#NOTES
#awk '{gsub("", "", $0); print}'  SEARCH REPLACE

#Globals
datenow="#$%&*^ {datetime.datetime.now().strftime('<%m.%d.%Y.%H:%M>')}"
in4="   "
in8="       "
in12="$in8   "


#Shebang + import
sheimpang() {
	cat <<EOF
#!/usr/bin/env python3
#pynksh.lang_gen()
import tkinter as tk
import re
import datetime
import subprocess
from idlelib.percolator import Percolator
from idlelib.colorizer import ColorDelegator

EOF
}

#python import
import() {
	typeset i="$1"
	typeset as="$2"
        echo "import $i $as"
}

#Make RootWindow
mainwin() {
	cat <<EOF

class RootWindow(tk.Tk):
    def __init__(self):
        super().__init__()
EOF
}

#Define Class
clsd() {
	typeset appName="$1"
	cat <<EOF

class $appName(tk.Frame):
    def __init__(self, parent, ):
        super().__init__(parent)
        self.master = parent
EOF
}

#Define Class Instance
clsi() {
	typeset n="$1"
	typeset c="$2"
	echo "$in8 self.$n = $c(self)"
}

#Pack Class Instance
pki() {
	typeset n="$1"
	typeset e="$2"
	typeset f="$3"
	echo "$in8 self.$n.pack(expand=$e, fill=\"$f\")"
}

#Pack Widget
pk() {
	typeset n="$1"
	typeset e="$2"
	typeset f="$3"
	echo "$in8 self.$n.pack(expand=$e, fill=\"$f\", padx=15, pady=15)"
}

#Grid Root
gwr() {
	typeset r="$1"
	typeset w="$2"
	defs "grid_rowconfigure($r, weight=$w)"
}

gwc() {
	typeset c="$1"
	typeset w="$2"
	defs "grid_columnconfigure($c, weight=$w)"
}

#Grid Widget
g() {
	typeset n="$1"
	typeset r="$2"
	typeset c="$3"
	echo "$in8 self.$n.grid(row=$r, column=$c, sticky=\"nsew\", padx=5, pady=5)"

}

#Widget Configure $n = '' or .mywidget
cfg() {
	typeset n="$1"
	typeset p="$2"
	echo "$in8 self$n.configure($p)"
}

#Keybinding $n = '' or .mykeybind
kbind() {
        typeset n="$1"
	typeset mod="$2"
	typeset funcName="$3"
	echo "$in8 self$n.bind(\"<$mod>\", self.$funcName)"
}

#Define Function
def() {
	typeset p="$1"
	typeset funcName="$2"
        echo "$in4 def $funcName($p):"
}

#Define Master Function
defm() {
	typeset n="$1"
        echo "$in8 self.master.$n(self.master)"
}

#Define Expression
defx() {
	typeset exp="$1"
	echo "$in8 $exp"
}

#Define self Statement
defs() {
	typeset statement="$1"
	echo "$in8 self.$statement"
}

#Func Call
fnc() {
	typeset n="$1"
	defs "$n()"
}

#PanedWindow
pww() {
	typeset name="$1"
	typeset o="$2"
	typeset w="$3"
	typeset p="$4"
        cat <<EOF
        self.$name = tk.PanedWindow(
            $p,
            orient="$o",
            sashwidth=$w,
            relief="flat",
            showhandle=True,
            sashpad=5,
            bg="#666")

EOF
}

#Entry
entryw() {
	typeset name="$1"
	typeset w="$2"
        cat <<EOF
        self.$name = tk.Entry(
            self,
            bg="#444",
            fg="#CCC",
            highlightcolor="orange",
            highlightbackground="#555",
            width=$w,
            relief="flat",
            cursor="heart")

EOF
}

#Text Delete
tdel() {
	typeset n="$1"
	typeset s="$2"
	typeset f="$3"
	echo "$in8 self.$n.delete(\"$s\", \"$f\")"
}

#Entry Get
eget() {
	typeset n="$1"
	typeset i="$2"
	echo "$in8 $i = self.$n.get()"
	tdel $n 0 'end'	
}


#Button
btnw() {
	typeset n="$1"
	typeset t="$2"
	typeset c="$3"
        cat <<EOF
        self.$n = tk.Button(
            self,
            text="$t",
            command=self.$c,
            bg="#444",
            fg="#CCC",
            padx=5,
            pady=5,
            relief="flat",)

EOF
}

#Label
labelw() {
	typeset n="$1"
	typeset t="$2"
        cat <<EOF
        self.$n = tk.Label(
            self,
            font=("Iosevka", 14),
            bg="#444",
            fg="black",
            text="$t")

EOF
}

#Text
textw() {
	typeset name="$1"
        cat <<EOF
        self.$name = tk.Text(
            self,
            bg="#444",
            fg="#CCC",
            relief="flat",
            highlightcolor="orange",
            highlightbackground="#555",
            insertbackground="red",
            insertwidth=5,
            undo=True,
            padx=10,
            pady=10,
	    wrap="word",
            cursor="heart",)

EOF
}

#Text Get
tget() {
	typeset n="$1"
	typeset i="$2"
	typeset s="$3"
	typeset f="$4"
	echo "$in8 $i = self.$n.get(\"$s\", \"$f\")"
}

#Get Line From Text Widget
getln() {
	typeset n="$1"
	typeset file="$2"
	echo "$in8 $file = self.$n.get(\"insert linestart\", \"insert lineend\")"
}

#@shell Subprocess
shsp() {
	typeset n="$1"
	typeset lntxt="$2"
	cat <<EOF
        try:
            result = subprocess.run(
                $lntxt,
                shell=True,
                executable="/usr/bin/ksh",
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True, )
            if result.returncode == 0:
                self.$n.insert("1.0", f"{result.stdout}\n")
            else:
                self.$n.insert("1.0", f"#$%&*^ {datetime.datetime.now().strftime('%H:%M')} {result.stderr}\n")
        except Exception as e:
            self.$n.insert("1.0", f"#$%&*^ {datetime.datetime.now().strftime('%H:%M')} {str(e)}\n")

EOF
}

#Write to File
wrtf() {
	typeset data="$1"
	typeset file="$2"
	cat <<EOF
        with open($file, "w") as file:
            file.write($data)

EOF
}

#Open file to TextWidget
opft() {
	typeset n="$1"
	typeset file="$2"
	cat <<EOF
        f = open($file, "r")
        me = f.read()
        self.$n.insert("1.0", me)

EOF
}

#Window Tile + Execute
exe() {
	typeset windowTitle="$1"
	cat <<EOF


if __name__ == '__main__':
    go = RootWindow()
    go.title("$windowTitle")
    go.configure(bg="black")
    go.mainloop()

EOF
}

