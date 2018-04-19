# Development
- Clone the project
```bash
git clone git@github.com:yeuem1vannam/product-size.git && cd product-size
```
- Install Ruby 2.5.1
```bash
rbenv install 2.5.1
```
- Bundle
```bash
bundle install
```
- Create database & seed
```bash
bundle exec rake db:create db:migrate db:seed --trace
```
- Spin up the development 
- Visit http://localhost:3000/products/new and create one
- Visit http://localhost:3000/products to see the product with its detail
