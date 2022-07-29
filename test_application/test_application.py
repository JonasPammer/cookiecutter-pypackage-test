from __future__ import annotations

import click


@click.command()
def main() -> None:
    # NOTE: click does not pass on the return value of the function.
    # use `raise SystemExit(return_code)` yourself where necessary
    pass


if __name__ == "__main__":

    main()
