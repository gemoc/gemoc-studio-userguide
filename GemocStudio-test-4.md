# TEST 4 TFSM Concurrent

## Test 3.1 : Language workbench
Main goal: Make sure that the language workbench correctly defines and compiles all required element for TFSM in Concurrent
[cols="a,a,1*", options="header"]
|===
|Actions to execute
|Verification
|Result for version: V2.0.1 2016_01_13

|
- File > new > Examples > TFSM Language example (Concurrent)
| all added projects should be error free (may require a "clean all")
|:white_check_mark:

|
- Open the projet.xdsml file with the Concurrent XDML editor
- click on Domain model / EMF Project link
- click on Domain model / genmodel link
|must open an editor on the ecore/resp genmodel file of the domain, 
|:white_check_mark:

|
- click on Behavior definition / K3 project link
|must open an editor on the .k3 file containing aspects
|:white_check_mark:

|
- click on Graphical editor / Sirius viewpoint design project link
|-must open the .odesign file
|:white_check_mark:

|
- click on Graphical editor / Sirius animator project link
|-must open the .odesign file
|:white_check_mark:


|
- ECL file generates a correct .qvto file
| :large_orange_diamond: no visual error but doesn't work out of the box, eclmoc2as project need to use the project/configure/add DSE builder to fix its configuration.
|===



## Test 3.2: Modeling Workbench
Main goal: Make sure that the TFSM sample run correctly using the Concurrent engine
[cols="a,a,1*", options="header"]
|===
|Actions to execute
|Verification
|Result for version: V2.0.1 2016_01_13

|
- File > new > Examples > Example for TFSM Language (Concurrent)
| all added projects should be error free (may require a "clean all")
|:white_check_mark:

|
- right click on the .tfsm file, Debug as , Debug as Gemoc Concurrent executable model
| should launch the shared launchconfiguration or open the launchconf dialog
|:white_check_mark:

|
- start execution using the break at start option in the launchconfiguration
- go forward using step by step, step into, step over
| check the stack, and element hightlighted in the sirius editor
| :white_check_mark:

|
- open sirius editor (using model explorer view )
- test toggle breakpoints
| - must show the breakpoint in the sirius editor, in the breakpoint view
- execution must pause on the breakpoint
| :red_circle: toggle breakpoint works but doesn't stop 

|
- test Event scheduling timeline (backward, forward, branch)
| 
|

|
|
|===