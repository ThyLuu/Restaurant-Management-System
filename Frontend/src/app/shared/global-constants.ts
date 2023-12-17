export class GlobalConstants{
    //Message: Hãy thử lại sau
    public static genericError: string = "Something went wrong. Please try again later";

    //Message: Bạn không phải admin để truy cập đến trang này
    public static unauthroized: string = "You aren't authorized person to access this page";

    //Message: Sản phẩm / món ăn này đã tồn tại
    public static productExistError: string = "Product is already exists";

    //Message: Sản phẩm / món ăn đã thêm thành công
    public static productAdded: string = "Product added successfully";

    //Regex
    public static nameRegex: string = "[a-zA-Z0-9 ]*";
    public static emailRegex: string = "[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+\\.[a-z]{2,3}";
    public static contactNumberRegex: string = "^[e0-9]{10,10}$";
    
    //variable
    public static error:string = "error";
}