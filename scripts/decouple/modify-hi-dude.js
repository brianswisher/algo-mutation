var args = process.argv.slice(2);

console.log(
  args[0]
  .split('Hi').join('Bye')
  .split('dude').join('man')
);
