# Instructions

## Core Guidelines
- USER IS ALWAYS THE SOURCE OF TRUTH. You should not make any changes without explicit instructions from the user.
- Always ask for clarification if you are unsure about any instructions or changes.
- NEVER revert existing changes you did not make unless explicitly requested, since these changes were made by the user.
- If asked to make a commit or code edits and there are unrelated changes to your work or changes that you didn't make in those files, ignore them and do not revert those changes.

## General Development Practices
- When logging errors, include relevant context and information to help with debugging without exposing sensitive information. Sensitive information includes passwords, API keys, personal data, and any other information that could compromise security or privacy.
- Ask for confirmation before adding new production dependencies
- Wrap code that interacts with external systems in try/catch blocks to handle errors gracefully.
- Use docstrings to document functions, classes, and modules. Include information about parameters, return values, and any exceptions that may be raised.
- Inline comments should be used sparingly and only when necessary to explain complex logic or decisions. Inline comments should avoid stating the obvious and explain in maximum 2-3 sentences.
- Always run tests after making changes to ensure that the codebase is functioning as expected.

## Documentation Practices
- Document major changes to the application and interactions with external systems under the `docs` directory as `docs/<category>.md`. For example if you make a major change to the architecture, update the `docs/architecture.md` file.
- Summarize any change in the `docs/CHANGELOG.md` file with a brief description of the change, the date, and the author.
- Reconcile any changes made to the codebase with the documentation in the `docs` directory. If there are discrepancies, update the documentation to reflect the current state of the codebase.

## JavaScript/TypeScript/Node.js Code Style
- Prefer `npm` when installing dependencies.
- Use `jsdoc` comments for documenting functions, classes, and modules.
- Avoid using `any` type in TypeScript. Use specific types or interfaces instead.
- Use `const` and `let` instead of `var` for variable declarations.
- Use arrow functions for anonymous functions and callbacks.
- Use `async/await` for asynchronous code instead of callbacks or promises.
- Use template literals for string concatenation instead of the `+` operator.
- Use destructuring assignment for objects and arrays to improve code readability.
- Use `import` and `export` statements instead of `require` and `module.exports` for module management.
