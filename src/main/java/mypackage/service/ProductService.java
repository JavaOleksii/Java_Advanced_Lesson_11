package mypackage.service;

import java.util.Map;

import mypackage.domain.Product;
import mypackage.shared.AbstractCRUD;

public interface ProductService extends AbstractCRUD<Product> {
	public Map<Integer, Product> readAllMap();
}
