# random

A command line tool to generate random numbers, written in Swift.

## Build instructions

1. Clone this repository.

   ```sh
   git clone https://github.com/noClaps/random.git
   cd random
   ```

2. Build the package

   ```sh
   make
   ```

   You can then run `./random`.

## Usage

You can use the tool simply by running:

```sh
random # generates a random number between 0 and 1
```

You can also pass in limits. The defaults are 0 and 1.

```sh
random 0 10 # generates a random number between 0 and 10
```

If you want to generate integers, you can enable the `-i` flag.

```sh
random -i 0 10 # generates a random integer between 0 and 10
```

You can view the help by using `-h`:

```sh
random -h # shows the help menu for the command
```
