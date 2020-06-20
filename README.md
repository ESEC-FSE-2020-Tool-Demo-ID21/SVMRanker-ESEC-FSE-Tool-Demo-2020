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

#### Python packages needed for this project.

```
pip3 install z3-prover
pip3 install click
pip3 install sklearn
pip3 install python-constraint
```

Command Line:
```
python3 ./CLIMain.py --help
```
and follow the guidance and help info.
### Usage

