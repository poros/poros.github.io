---
title: "Pytest Tips"
layout: post
date: 2016-04-11 00:10
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

### Mock yield

njksdnjnandn,na

### Mock decorator last

njklsnlsnklns

### Combine fixtures

msklanslkmkla

---

I might add more tips to the list as time goes by in case I find anyhting useful and general enough.
