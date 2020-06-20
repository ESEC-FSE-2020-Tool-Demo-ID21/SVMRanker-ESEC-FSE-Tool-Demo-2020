# SVMRanker - ESEC/FSE Tool Demo 2020
# Review ID - 21

This repository is prepared for reviewing SVMRanker, which is submitted to [ESEC/FSE 2020 Tool Demo](https://2020.esec-fse.org/track/esecfse-2020-tool-demos#Call-for-Tool-Demos).
SVMRanker utilizes SVM techniques to synthesize multiphase ranking functions for proving loop programs.

## Source Code
**SVMRanker**: [https://github.com/ESEC-FSE-2020-Tool-Demo-ID21/SVMRanker](https://github.com/ESEC-FSE-2020-Tool-Demo-ID21/SVMRanker).

## Benchmarks
Out benchmark of 225 programs which consist of 134 boogie programs and 91 programs from C is here: []()


## Log files of the experiments

## Screencast of the tool demo

The screencast of the demo is available [HERE]()

## SVMRanker
### Installation
You should have installed Python 3 and Java Development Kit on your system.
Currently we can successfully run SVMRanker with Python 3 and JDK 8.0.

**Install Python packages**

```
pip3 install z3-prover
pip3 install click
pip3 install sklearn
pip3 install python-constraint
```

### Usage

After having installed the required software, SVMRanker can be used by entering the *src/* directory and then calling SVMRanker as follows: 
```
  python3 ./CLIMain.py --help
```
You should be able to see the following output.
```
```
As we can see, SVMRanker provides five commands. 
The first two commands allow for proving termination of a given program while the remaining three can be used for parsing the input file and translate it to a different format. 
In the remaining part of the section we focus on the details for the use of the **lmulti** and **lnested** commands.

**lmulti**, short for learning multiphase ranking function, instructs SVMRanker to learn a multiphase ranking function for the given program. 
To get the detailed usage information for this command, one can use the following command.
```
  python3 ./CLIMain.py lmulti --help
```
As the help shows, there are several options available to tune the execution of **lmulti**; 
we present their usage by means of a couple of examples. 
```
//example/Example1.c
	int main() {
    	int x, y;
    	while(x > 0 || y > 0) {
    		x = x + y - 1;
    		y = y - 1;
    	}
	}

```

The is the first C program we consider here; see the file \texttt{src/example/Example1.c}. 
This program can be shown to be terminating by means of a 2-multiphase ranking function, as we get by running SVMRanker to learn its multiphase ranking function as follows.
```
  python3 ./CLIMain.py lmulti --filetype C \
      example/Example1.c
```
