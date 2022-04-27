// see types of prompts:
// https://github.com/enquirer/enquirer/tree/master/examples

module.exports = [
  {
    type: 'input',
    name: 'name',
    message: 'What is the name of your repo?',
    validate: async (name) =>
      name.length === 0 ? 'Please enter a name.' : true,
  },
];
