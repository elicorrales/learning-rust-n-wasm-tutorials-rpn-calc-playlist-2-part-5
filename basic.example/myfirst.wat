(;
 We are going to attempt to mimic
 the RPN nature or function of what we did in youtube
 Rust(WASM?) RPN Calculator Part 2: Implement Basic Calculator

 Here is a portion of the Rust code from Part 2:

     let fake_keybd_inputs =
        vec!['2','3','+','4','1','+','*'];
;)

(module
  ;; So the first thing to do is to set up the numeric inputs
  ;;    2, 3, 4, and 1.
  (global $a (mut i32) (i32.const 2))
  (global $b (mut i32) (i32.const 3))
  (global $c (mut i32) (i32.const 4))
  (global $d (mut i32) (i32.const 1))

    (func $main (export "main") (result i32)
        ;; In the Rust RPN calculator, the vec![...],
        ;; it starts with 2 numeric inputs.
        global.get $a
        global.get $b
        ;; We assume $a value and $b value have been pushed onto
        ;; the stack.


        ;; Then in the above vec![...], the next input was a '+'.
        i32.add
        ;; Then, we assume that the $a and $b values were popped,
        ;; added, and the result(5) is now on the stack.


        ;; Again, following vec![...], We get our next 2 numeric inputs.
        global.get $c
        global.get $d
        ;; We assume $c value and $d value have been pushed onto
        ;; the stack.

        ;; Again, in the above vec![...], the next input was a '+'.
        i32.add
        ;; Then, we assume that the $c and $d values were popped,
        ;; added, and the result(5) is now on the stack.

        ;; So now the stack should contain 5, and 5.


        ;; The final input from vec![...] is a '*'.
        i32.mul
        ;; We assume that 5 and 5 were popped,
        ;; and the result(25) is now on the stack.

        ;; Since this main function signature return type is i32,
        ;; we do not need an explicit return here.
        ;; We should see a '25' returned.
    )
)

