module.exports = {
    env: {
        es6: true,
        node: true,
        'nova/nova': true,
    },
    extends: [
        'eslint:recommended',
        'plugin:@typescript-eslint/eslint-recommended',
    ],
    parser: '@typescript-eslint/parser',
    parserOptions: {
        ecmaVersion: 2018,
        sourceType: 'module',
    },
    plugins: ['@typescript-eslint', 'nova', 'promise', 'n', 'import'],
    rules: {
        'no-unused-vars': ['warn'],
    },
}
