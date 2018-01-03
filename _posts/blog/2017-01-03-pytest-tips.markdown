---
title: "Three Pytest Tips"
layout: post
date: 2017-01-03 22:00
tag:
- python
- pytest
- testing
- mock
blog: true
---

I happened to use [pytest](https://github.com/pytest-dev/pytest) a lot in the last few months, so I decided to write down a couple tips which could be useful to those who are already a bit familiar with the framework. For those who are not, pytest [documentation](https://pytest.org/latest/index.html) is a good place where to start.

### Parametrized dictionary

**Use case**

Run the same test with different input parameters and expected values

**Benefit**

- Tidy code
- Human-readable test names

First of all, define a dictionary where the key is the name of your test case
and the value is a tuple with inputs parameters and expected values.

{% highlight python %}
params = {
    'empty_line': ('', {}),
    'get_ok': ('GET 200', {'request': 'GET', 'status': '200'}),
    'get_not_found': ('GET 404', {'request': 'GET', 'status': '404'}),
}
{% endhighlight %}

Then decorate your test as the following:

{% highlight python %}
@pytest.mark.parametrize('line,expected', list(params.values()), ids=list(params.keys()))
def test_decode(self, line, expected):
    assert decode(line) == expected
{% endhighlight %}

The first parameter of the decorator is a string containing the names of the
parameters you want to parametrize your test on separated by a comma (in this
case `line` and `expected`). You can then use those names as arguments for your
test function.

The second parameter of the decorator is the list of values to be assigned to
the parameters; in our case is always going to be the list of values of the
dictionary.

Finally, the third parameter is the list of test names that will be used for each
generated test case; in our case this corresponds with the keys of the dictionaries.

This is the output when you run `pytest -v` with the above code:

{% highlight bash %}
pytest -v tests/dict_test.py
========================================== test session starts ==============================================
platform linux  Python 3.6.3, pytest-3.3.1, py-1.5.2, pluggy-0.6.0 /home/antonio/virtualenv_run/bin/python3.6
cachedir: .cache
rootdir: /home/antonio, inifile:
collected 3 items

tests/dict_test.py::test_decode[empty_line] PASSED                                                     [ 33%]
tests/dict_test.py::test_decode[get_ok] PASSED                                                         [ 66%]
tests/dict_test.py::test_decode[get_not_found] FAILED                                                  [100%]

================================================ FAILURES ===================================================
_________________________________________ test_decode[get_not_found] ________________________________________
line = 'GET 404', expected = {'request': 'GET', 'status': '404'}

...
{% endhighlight %}


For more information on pytest parametrization, have a look at the documentation
[here](https://docs.pytest.org/en/latest/parametrize.html).

### Context manager/mock yield

**Use case**

Execute some setup and teardown logic for a fixture (**not** a test)

**Benefit**

- More compact code
- Avoiding test pollution

Pytest provides a feature to execute some setup and teardown logic
when defining a fixture, like in the example below:

{% highlight python %}
def session():
    # setup
    client = client.open("myapp.com/api", 872)
	# provide the fixture value
    yield session
    # teardown
    session.close()
{% endhighlight %}

This feature is incredibly useful when combined with context managers,
since they are going to automatically execute the teardown code when
they get out of scope; e.g. opening of a file:

{% highlight python %}
def text():
	with open("text.txt") as f:
		yield f
{% endhighlight %}

This feature makes possible to create pytest fixtures where we can **mock**
something out **only** until the fixture stays in scope, avoiding a pretty
common source of test pollution:

{% highlight python %}
def consumer():
	with mock.patch('logging.getLogger'):
		yield Consumer('my_stream')
{% endhighlight %}

If you want to know more about this feature, the documentation has a nice
writeup
[here](https://docs.pytest.org/en/latest/fixture.html#fixture-finalization-executing-teardown-code)

### Composing fixtures

**Use case**

Define a fixture based on another fixture and intercat with both of them
in the test

**Benefit**
- Modular code
- Shorter tests

Pytest fixtures can be combined at any level, making very easy to build
chains of mocked components. This is easier showed than said, so let's
just have a look at an example:

{% highlight python %}
@pytest.fixture
def stream():
    return mock.Mock(spec=Stream)

@pytest.fixture
def output():
    return open('test.txt', 'w')

@pytest.fixture
def tailer(self, stream, output):
    with mock.patch('logging.getLogger', autospec=True):
        yield Tailer(stream, output, mock.sentinel.lines)

@mock.patch('consumer.read_lines')
def test_tailer(mock_read, tailer, stream):
    stream.fetch.return_value = "test\n"
    tailer.run()
    mock_read.assert_called_once_with(stream, mock.sentinel.lines)
    with open('test.txt', 'r') as f:
        assert f.read() == "test"
{% endhighlight %}

As you can see, the `stream` fixture is used as parameter to create a
the `tailer` fixture. Then, both of them are used in the test case to
make the desired assertions.

This one is probably useful only for integration tests or tests covering
lots of moving parts, but it makes reading these complex tests much
easier, since it makes much more explicit the relation between all
the components involed in the test.

---

I kept this list short in the hope that people could at least remember one of
the tips; but I might write more tips in another post in case I find something
particularly useful. Stay tuned!
