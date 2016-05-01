var args = process.argv.slice(2);

console.log(
  args[0]
  .split('Hello').join('Hi')
  .split('world').join('dude')
);
