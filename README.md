## Demo of FlexMock/MiniTest integration

### How it works

- Using the Test::Unit/MiniTest "shim" in Ruby 1.9 (i.e. using `Test::Unit::TestCase`), everything works the same as for [FlexMock/Test::Unit integration](https://github.com/freerange/flexmock-with-testunit).
- However, if you want to use `MiniTest::Unit::TestCase` directly, you must `include FlexMock::TestCase` into each of your test cases.
- This does an `alias_method_chain` style manoeuvre to add `FlexMock::MockContainer#flexmock_teardown` behaviour to that of `MiniTest::Unit::TestCase#teardown`. Monkey-patching all the way.
- There is [a warning in the documentation](http://flexmock.rubyforge.org/FlexMock/TestCase.html) to say that if you define your own `#teardown` method, you should make sure you call `#super`.
