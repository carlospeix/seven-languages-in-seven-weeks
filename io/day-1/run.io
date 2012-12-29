// Run a program from a file

Greeter := Object clone do (
	greet := method(
		"Hello world from Io :)" println
	)
)

myGreeter := Greeter clone

myGreeter greet

// Execute the code in a slot given its name
myGreeter getSlot("greet") call
