# online-shopping
Sample project for implementing basic functionality of adding a product to a cart using Test Driven Development

MVVM design pattern is followed.

Following folders are created:
1. Modules -> AddToCart -> Model   (To store Datamodels)
2. Modules -> AddToCart -> ViewModel     (To handle Business logics)
3. Utilites -> Extenions (For common functionalities)

Following files are created:
Models:
1. ProductType.swift - To group the available product types (laptop/mobile/tablet)
2. StateModel.swift - To group the states and store respective tax rates
3. ProductInput.swift - To get the user input 

ViewModel:
1. AddToCartViewModel.swift - Handles logics to compute tax, discount and final price
2. TaxCalculator.swift - Protocol that declares tax calculation method
3. DiscountCalculator.swift -  Protocol that declares discount calculation method

Extensions:
1. Int+EmptyCheck.swift - To check valid integer or not
2. Double+EmptyCheck.swift - To check valid double or not

Have covered the following tests:
1. ProductInputTest.swift - Tests inputs
2. StateModelTest.swift - Tests tax rate availability
3. AddToCartViewModeltest.swift - Tests tax, discount and final price computation

Note:
Tax is calculated on the price without including the discount.
