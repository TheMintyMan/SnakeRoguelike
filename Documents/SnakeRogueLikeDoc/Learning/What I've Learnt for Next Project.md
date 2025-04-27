
All C++ classes in the "Source" folder which is the primary module of the project can be organised however you want.
"Private" and "Public" Isn't really needed for where the base game is.

"Private" and "Public" folders
"Private" and "Public" folders are only really important when setting Game Features or Modular Gameplay plugins where you would only want to access the "Public" header files.

Static Functions
For generic code that could be used in multiple places such as the bouncy lerp I've created. Things like that could be a static function that is accessible anywhere. And maybe make it Blueprint callable as well. Probably put this in a UObject and call the Class UGameUtility or something.
You can call static methods without needing an instance.
You can call it by (Name of Class)::(Name of Method). Use the "::". When you call a static method, you can only call other static methods and static member variables. 
FMath:: is probs a good built in Unreal static methods to see how they do it.

Timeline Nodes
Not the easiest thing to work with. It's not friendly with GAS.



