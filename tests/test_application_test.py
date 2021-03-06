"""Tests for `cookiecutter-pypackage-test` package."""
from __future__ import annotations

import pytest
from click.testing import CliRunner

from test_application import test_application


@pytest.fixture
def response():
    """Sample pytest fixture.

    See more at: http://doc.pytest.org/en/latest/fixture.html
    """
    # import requests
    # return requests.get('https://github.com/audreyr/cookiecutter-pypackage')


def test_content(response):
    """Sample pytest test function with the pytest fixture as an argument."""
    # from bs4 import BeautifulSoup
    # assert 'GitHub' in BeautifulSoup(response.content).title.string


def test_command_line_interface():
    """Test the CLI."""
    runner = CliRunner()
    result = runner.invoke(test_application.main)
    assert result.exit_code == 0
    # assert 'some string' in result.output
