# QuintSys Rails Templates

This is a collection of templates for Rails projects.

## Usage

```bash
rails new PROJECT_NAME --css=bootstrap --template https://raw.githubusercontent.com/quintsys/rails-templates/refs/heads/master/default.rb
```

## Templates

### `default.rb`

The default template for Rails projects.

It includes:

- `htmlbeautifier` for HTML formatting
- `rails_best_practices` for code quality
- `solargraph` and `solargraph-rails` for Ruby language server
- Authentication with `authentication-zero`
- `meta-tags` for SEO

It runs the generator and database migrations needed for authentication zero,
and runs rubocop in autocorrect mode after the project is created.

Finally, it creates a commit with the initial project structure.
