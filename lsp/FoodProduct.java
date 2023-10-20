package lsp;

import java.sql.Date;

abstract class FoodProduct extends Product {
    abstract Date getExpiredDate();
}