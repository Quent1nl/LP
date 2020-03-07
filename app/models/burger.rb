class Burger < ApplicationRecord
    def nutriments
        code = "3029330003533"
        product = Openfoodfacts::Product.get(code, locale: 'fr')
        return product.nutriments
    end
end
