# TEST 5 SigPML Concurrent

## Test 5.1 : Language workbench
Main goal: Make sure that the language workbench correctly defines and compiles all required element for SigPML in Concurrent

[cols="a,a,1*", options="header"]
|===
|Actions to execute
|Verification
|Result for version: V2.0.1 2016_01_13

|
- File > new > Examples > SigPML Language example (Concurrent)
| all added projects should be error free (may require a "clean all")
|:question:

|
- Open the Main.melange file
- Ctrl+Click on 'syntax' URI hyperlink
| must open an editor on the ecore/resp genmodel file of the domain, 
| :question:

|
- Ctrl+Click on 'with' class hyperlink
| must open an editor on the .k3 file containing aspects
| :question:

|
- click on Graphical editor / Sirius viewpoint design project link
|-must open the .odesign file
|:question: Deprecated

|
- click on Graphical editor / Sirius animator project link
|-must open the .odesign file
|:question: Deprecated

|
- Ctrl+Click on 'ECL' URI hyperlink
|-must open the .ecl file
|:question:

|
- ECL file generates a correct .qvto file
|
| :question:

|
|
|===

## Test 5.2: Modeling Workbench
Main goal: Make sure that the SigPML sample run correctly using the Concurrent engine
[cols="a,a,1*", options="header"]
|===
|Actions to execute
|Verification
|Result for version: V2.0.1 2016_01_13

|
- File > new > Examples > Gemoc simple model example for SigPML Language (Concurrent)
| all added projects should be error free (may require a "clean all")
|:question:

|
- right click on the simple.sgpml file, Debug as , Debug as Gemoc Concurrent eXecutable model
| should launch the shared launchconfiguration or open the launchconf dialog
|:question:

|
- start execution using the break at start option in the launchconfiguration
- go forward using step by step, step into, step over
| check the stack, and element hightlighted in the sirius editor
| :question:

|
- open sirius editor (using model explorer view )
- test toggle breakpoints
| - must show the breakpoint in the sirius editor, in the breakpoint view
- execution must pause on the breakpoint
| :question:

|
- test simple Event scheduling timeline trace
| should display the logical steps and some details about them
| :question:


|
- test advanced Event scheduling timeline trace (backward, forward, branch 
| should jump, update sirius view, update debugstack, ...
| :question:

|
|
|===