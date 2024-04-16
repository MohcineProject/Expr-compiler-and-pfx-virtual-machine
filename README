AUTHORS
-------

- Zahdi Mohcine
- Pham Hai-Nguyen

===============

Description of the project
--------------------------

The project is about building a tool that can understand simple math equations and eventually handle 

more complicated ones (functions). Instead of directly translating the equations into the language 

that computers understand, we first translate them into a simpler language that computers can work 

with easily. Then, we run them on a virtual machine. We use two languages for this project: Expr and 

Pfx. We wrote explanations about how everything works in a document using LaTeX. For the coding part,

we tackled basic math operations (the functional part is not working correctly) and checked if they 

work correctly using Dune. The code is organized neatly into folders (for the functions extensions 

check folders named 'fun' for both languages.)


===============

Sources
-------

Git repository: https://github.com/MohcineProject/Expr-Compiler-.git

(We did not use the git, we usually worked together in the same pc, thinking about the solution and implementing it)

===============

How to…
-------

…retrieve the sources?

  git clone https://github.com/MohcineProject/Expr-Compiler-.git

…compile and execute ?

  for the pfx programs (that deal with simple stack operations no functions), you can execute 
  programs written in the ok_prog.pfx file, you can modify the pfx code and test the virtual machine. 

   dune exec pfx/pfxVM.exe -- pfx/basic/tests/ok_prog.pfx 

  for the Expr programs, to compile them to pfx and execute them (again with just the simple arithmetic operations)
  we use the file an_example.expr, you can modify the file and write new programs in Expr. 

  dune exec expr/compiler.exe -- expr/basic/tests/an_example.expr



… to test?
  You can also use this command to run tests, however it would not work since we are still having trouble
  in the fun folder. 
  dune utop and then use the libraries



===============

Structure of the project
------------------------

The project is organized as following:

Here we explain the structure of our project

You may also show the file tree as the following example:
.
├── dune-project
├── expr
│   ├── basic                      : This is the main folder for the expr arithmetic operations
│   │   ├── ast.ml                 : This is the AST of the expr
│   │   ├── ast.mli                : This is the interface of the AST    
│   │   ├── dune                    
│   │   ├── eval.ml                 
│   │   ├── eval.mli               
│   │   ├── lexer.mll              
│   │   ├── parser.mly             
│   │   ├── tests                  
│   │   │   └── an_example.expr    : The test file we use for compilation testing
│   │   ├── toPfx.ml               : This is where we coded the generate function to compile expr AST to pfx AST
│   │   └── toPfx.mli              
│   ├── common                      
│   │   ├── binOp.ml
│   │   ├── binOp.mli
│   │   └── dune
│   ├── compiler.ml                : The file used to compile expr to pfx and print the result of the valuation: it uses our generate function in 'toPfx.ml'
│   ├── dune
│   ├── fun                        : The directory used for the functions extension
│   │   ├── ast.ml
│   │   ├── ast.mli
│   │   ├── lexer.mll
│   │   ├── parser.mly
│   │   ├── toPfx.ml               : Here we updated the generate function to handle functions compilation (not tested yet and it should still require some patches)
│   │   └── toPfx.mli
│   ├── main.ml                    : This file is used to execute expr programs directly using expr own parser and lexer
│   └── README
├── pfx
│   ├── archive
│   │   └── lexer1.mll
│   ├── basic
│   │   ├── ast.ml                 : The AST of the pfx 
│   │   ├── ast.mli
│   │   ├── dune
│   │   ├── eval.ml
│   │   ├── eval.mli
│   │   ├── lexer.mll
│   │   ├── parser.mly
│   │   ├── test_lexer.txt 
│   │   └── tests
│   │       └── ok_prog.pfx        : The main test file for the pfx 
│   ├── dune
│   ├── fun                        : The directory for the function extension
│   │   ├── ast.ml
│   │   ├── ast.mli
│   │   ├── dune
│   │   ├── eval.ml
│   │   ├── eval.mli
│   │   ├── lexer.mll
│   │   ├── ok_prog.pfx            
│   │   └── parser.mly
│   ├── main.ml                    : A file used for compiling a pfx program and printing the tokens. Used mainly to test the lexer
│   └── pfxVM.ml                   : the file containing the virtual machine the execute the pfx program using the parser and the lexer
├── README
└── utils 
    ├── dune
    ├── location.ml                : A file used to determine the location of errors 
    └── location.mli
===============

Progress
--------

- We stopped at question 12 (we did it)
- There is still a bug in question 10.3 (new version of generate function)
- And also In the extended lexer of pfx (more specifcally, there is a problem with a function to tokenize
  sequence of commands)

===============

Know bugs and issues
--------------------

- One difficulty that took us a lot of time is the new lexer of the pfx : 
We tought about introducing seqences in the form of "Push [ (Sequence)]" But we found several problems 
in the lexer we could not define a proper regexp to catch nested Sequences as in "Push [ ... Push [ ... ] ... ]"
and we were not able to create a function to translate this commands from string to AST element 
(to be more specific it is the function 'tokenize_command_str') 

- Another problem that we encountred is with the new generate function in the fun directory of expr. 
Altough we believe that the logic is correct according to our defined rules of transformation we 
think that we did not handle correctly the recursive feature of the function to update the environment
used to bind variables to their depths. 



===============

Helpful resources
-----------------

- we used this manual to understand more deeply the regexp syntaxe used by ocamllex 
  
  https://caml.inria.fr/pub/old_caml_site/ocaml/htmlman/manual026.html

- We also looked into some other ressources, but the bug usually ended up to be a typo. 

===============

Difficulties
------------

- The project was really beautiful, we enjoyed the realm of functional paradigm, everything seemed coherent
- The problem was not that it was difficult, i genuinely think it is easy. The problem was in understanding
the environment and the syntaxe (dune, regexp, the overall structure ...) they took a good amount of time 
to try to understand them. 
The already written code was very helpfu along the process 



Notes on the code added : 
-------------------------

Exercice 4.1 : we added the type command in the mentionned directory pfx/basic/ast : it defines all the 
needed operations used by the language. 

Exercice 4.2 : we added the step function in the eval.ml file at the pfx/basic directory. It takes as 
argument too lists (one for command and one for the stack) and modify the stack according to the top 
command on the list. It deals as well with errors and returns error messages as defined in the semantics
rules. 

Exercice 5.2 : we added the function generate in the file toPfx.ml in the expr/basic directory. It defines
how an expr ast should be translated into pfx ast and it is used to transform whole expr programs by the 
compiler (at the expr/ ).

Exercice 6.1 : we modified the lexer of the pfx and added the necessary rules to tokenize commands

Exercice 7   : we added the location of the error to the error message printed by the lexer using the 
location utility. 

Exercice 8.1 : we added the pfx parser in the pfx/basic directory. The starting type is the "program"
that can contain the number of arguments followed by the second defined type "command" which is a sequence
of the tird defined type "operator" that represents the pfx commands. 

Exercice 8.2 : we coded the necessary functions to print the sequence of commands. They are located 
at the pfx/basic/ast.ml file. We used it on the pfx virtual machine to print the ast. (you can add
the following line of code 
        print_endline (BasicPfx.Ast.string_of_program pfx_prog);
after line 16 to apply the printing 
)

Exercice 9.3 : For this exercice, we introduced a new AST where the 'Push' command can contain either 
an integer or a list of commands, we defined both of them in a new type called 'element'. We added a 
small patch to the string of functions so that we can print these new constructs as well. 

we extended the lexer and the parser of pfx in the fun directory. We added the new regexp
'command' to tokenize the nested sequences. We intended first to detect expressions of type 
'Push [ ... Push [...] ... ]' in order to have a nested sequence inside another one. We fisrt tried 

'let command = "Swap"|"Sub"|"Div"|"Mul"|"Rem"|"Add"|"Pop" | "Push" blank+ "[" blank+ (command blank+)+ blank+ "]" '

But we found at the end that a nested regexp like this was not correct (i believe it was the lexer who gave us an error log that
finally located the problem )

We also added the function 'tokenize_command_str' that we intended to tokenize the sequence of commands (the 
argument of the Push for nested sequences ) However there was a problem in referencing the lexer, and we 
think the implementation needs revising (in this version we returned the list of tokens, we should have returned the 
list of commands types )

We added the detection of 'Exec' and 'Get' as well, we do not think there is a problem with that.

For the parser, we did not apply major changes, we just added the new operators and changed the constructor
of the 'PUSH' token. 

Exercice 10.3 : For this one, we coded a new function generate in a copy of the 'toPfx.ml' in the fun directory
of expr. this new function uses an environment (called env) to store the binding between variables and 
their depths. We did not test the function yet, however we think there is an error in the way we matched
the const pattern (the idea was that whenever we use a constant, we need to push it and therefore 
we need somehow to modify the env of the whole program: there are too issues with this approach we think
, first, this fact is not totally accurate, morelikely the env should change with the binary operations
,second, even if the method is correct, the way we update the environment seems wrong as the update
is not transmitted to the rest of the ast recursively ), Nontheless, the rest seems to be correct.

Futur: 
------

Since the project was beautiful we look forward to complete it, you can verify the provided gitlab 
we will be sure also the put the latex document if renewed. 
