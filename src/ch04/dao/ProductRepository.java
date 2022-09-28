package ch04.dao;

import java.util.ArrayList;
import java.util.List;

import ch04.vo.ProductVO;

public class ProductRepository {
	//싱글톤 패턴
	//ProductRepository 클래스의 기본 생성자에 대한 객체 변수 instance를 작성함
	private static ProductRepository instance = new ProductRepository();

	//객체 변수 instance에 대한 Getter() 메소드
	public static ProductRepository getInstance() {
		if(instance == null) {
			instance = new ProductRepository();
		}
		return instance;
	}
	
	//상품 목록을 저장하기 위한 List<ProductVO> 객체 타입의 변수
	private List<ProductVO> listOfProducts = new ArrayList<ProductVO>();
	
	//기본 생성자
	public ProductRepository() {
		//Smart Phone 상품 추가(1행(productVO) 추가)
		//String productId, String pname, int unitPrice
		ProductVO phone = new ProductVO("P1234","iPhone 6s", 800000);
		phone.setDescription("4.7inch, 1334X750 Renina HD display");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInstock(1000);
		phone.setCondition("New");
		
		listOfProducts.add(phone);
		
		//2) notebook 상품추가(1행(productVO) 추가)
		ProductVO notebook = new ProductVO("P1235","LG PC 그램",1500000);
		notebook.setDescription("13.3-inch, IPS LED display");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInstock(1000);
		notebook.setCondition("Refurbished");
		
		listOfProducts.add(notebook);
		
		//3) tablet 상품추가(1행(productVO) 추가)
		ProductVO tablet = new ProductVO("P1236","Galaxy Tab S",900000);
		tablet.setDescription("212.8*125.6*6.6mm, super AMOLED display");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInstock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(tablet);
	}
	//객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져오는 메소드
	public List<ProductVO> getAllProducts(){
		return listOfProducts;
	}
	
	//INSERT INTO PRODUCT VALUES(...)
	//객체 타입의 변수 listOfProducts에 새로운 상품 정보를 등록하는 메소드
	public void addProduct(ProductVO productVO) {
		listOfProducts.add(productVO);
	}
	
	//상세보기 => ProductVO을 리턴
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1235'
	public ProductVO getProductById(String productId) {
		//자바빈 객체 선언
		ProductVO productById = null;
		
		//listOfProducts의 크기만큼 반복
		for(int i = 0; i < listOfProducts.size();i++) {
			ProductVO vo = listOfProducts.get(i);
			if(vo!= null && vo.getProductId() == null && vo.getProductId().equals(productId)) {
				productById = vo;
				//반복문을 빠져나옴
				break;
			}
		}
		return productById;
	}
}
