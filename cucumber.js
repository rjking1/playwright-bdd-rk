module.exports = {
  default: {
    paths: ['test/features/**/*.feature'],
    require: ['test/steps.ts'],
    requireModule: ['ts-node/register'],
  },
};
