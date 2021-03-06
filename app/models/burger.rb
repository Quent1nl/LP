class Burger < ApplicationRecord
    def nutriments
        product = Openfoodfacts::Product.get(self.code, locale: 'fr')
        if product
            return product.nutriments.to_hash
        else
            return ["nutriment" => "Could not retrieve nutriments, product code must be erroned"]
        end
    end
end
