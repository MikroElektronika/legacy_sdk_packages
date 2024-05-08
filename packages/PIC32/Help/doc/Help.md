___
### Table of Contents
1. [Libraries in package](#libraries)
2. [Using the package in a project](#project)
3. [Using the package in an imported project](#primport)
4. Image content
	1. Image 1 - [Open library selection window](#img1)
	2. Image 2 - [Select from available libraries](#img2)
	3. Image 3 - [Resulting "memake" file](#img3)
	4. Image 4 - [Open project](#img4)
	5. Image 5 - [Navigate to your project](#img5)
___

<a name="libraries"></a>
###[<font color = brick>List of all libraries and prototypes</font>](./Library/index.htm)

___

<a name="project"></a>
###<font color=black>Using libraries from the package in a project</font>

The following steps are for including UART libraries.</br>
Using the same method, any needed library can be included.

__Necessary steps:__

	1. Create a new project of your choice.
	
	2. Select desired libraries to be used by your project.
___
<a name="img1"></a>
__Image 1 - Open library selection window__</br>

![](Resources\library_selection.png)</br>
___
	3. A new window will appear, in which desired libraries should be selected.
		!!! Take into consideration that both "Global" and "Local" should be selected
___
<a name="img2"></a>
__Image 2 - Select from available libraries__</br>

![](Resources\check_libraries.png)</br>
___
	4. After selecting libraries, click on "OK".

	5. Now, your "memake" file has been configured to use libraries
	   from the installed package.
___
<a name="img3"></a>
__Image 3 - Resulting "memake" file__</br>

![](Resources\resulting_memake.png)</br>
___
	6. You can now use the functions from the included library.
___

<a name="primport"></a>
###<font color=black>Importing projects</font>

If you wish to import one of your old projects,</br>
these steps should be followed.

__Necessary steps:__

	1. Click on "Open Project".

___
<a name="img4"></a>
__Image 4 - Open Project.__</br>

![](Resources\open_project.png)</br>
___

	2. A new window will apear prompting for a project.
	   Here we will select the project we want to import.
	   Project files have a ".mcpar" extension.
___
<a name="img5"></a>
__Image 5 - Navigate to your project file__</br>

![](Resources\select_project.png)</br>
___

	3. Finally, click on "Open".

	4. Your old project can now be used from Necto Studio.
		!!! All libraries will be automatically selected upon import
___
__(c) mikroE__
___