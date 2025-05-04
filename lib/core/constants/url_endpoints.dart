const String baseUrl = 'https://api.openai.com/v1';

// PROFILE URLS
const String profileUrl = '$baseUrl/profile';
const String profileUpdateUrl = '$baseUrl/profile/update';
const String profileDeleteUrl = '$baseUrl/profile/delete';
const String profilePictureUrl = '$baseUrl/profile/picture';

// AUTH URLS
const String loginUrl = '$baseUrl/auth/login';
const String registerUrl = '$baseUrl/auth/register';
const String logoutUrl = '$baseUrl/auth/logout';
const String forgotPasswordUrl = '$baseUrl/auth/forgot-password';
const String resetPasswordUrl = '$baseUrl/auth/reset-password';
const String verifyEmailUrl = '$baseUrl/auth/verify-email';
const String refreshTokenUrl = '$baseUrl/auth/refresh-token';
const String changePasswordUrl = '$baseUrl/auth/change-password';
const String verifyPhoneUrl = '$baseUrl/auth/verify-phone';
const String verifyEmailCodeUrl = '$baseUrl/auth/verify-email-code';
const String resendEmailVerificationUrl =
    '$baseUrl/auth/resend-email-verification';
const String resendPhoneVerificationUrl =
    '$baseUrl/auth/resend-phone-verification';
const String updateEmailUrl = '$baseUrl/auth/update-email';
const String updatePhoneUrl = '$baseUrl/auth/update-phone';
const String deleteAccountUrl = '$baseUrl/auth/delete-account';

// ORDERS URLS
const String ordersUrl = '$baseUrl/orders';
const String createOrderUrl = '$baseUrl/orders/create';
const String orderDetailsUrl = '$baseUrl/orders/details';
const String orderHistoryUrl = '$baseUrl/orders/history';
const String orderTrackingUrl = '$baseUrl/orders/tracking';
const String orderStatusUrl = '$baseUrl/orders/status';
const String orderCancelUrl = '$baseUrl/orders/cancel';
const String orderDeliveredUrl = '$baseUrl/orders/delivered';
const String orderUpdateUrl = '$baseUrl/orders/update';
const String orderPaymentUrl = '$baseUrl/orders/payment';
const String orderRefundUrl = '$baseUrl/orders/refund';
const String orderReviewUrl = '$baseUrl/orders/review';
const String orderRatingUrl = '$baseUrl/orders/rating';

// CART URLS
const String cartUrl = '$baseUrl/cart';
const String addToCartUrl = '$baseUrl/cart/add';
const String removeFromCartUrl = '$baseUrl/cart/remove';
const String updateCartUrl = '$baseUrl/cart/update';
const String clearCartUrl = '$baseUrl/cart/clear';

// PRODUCTS URLS
const String productsUrl = '$baseUrl/products';
const String productDetailsUrl = '$baseUrl/products/details';
const String productReviewsUrl = '$baseUrl/products/reviews';
const String productRatingUrl = '$baseUrl/products/rating';
const String productSearchUrl = '$baseUrl/products/search';
const String productCategoriesUrl = '$baseUrl/products/categories';

// CATEGORIES URLS
const String categoriesUrl = '$baseUrl/categories';
const String categoryDetailsUrl = '$baseUrl/categories/details';
const String categoryProductsUrl = '$baseUrl/categories/products';
const String categorySearchUrl = '$baseUrl/categories/search';

// CHEFS URLS
const String chefsUrl = '$baseUrl/chefs';
const String chefDetailsUrl = '$baseUrl/chefs/details';
const String chefReviewsUrl = '$baseUrl/chefs/reviews';
const String chefRatingUrl = '$baseUrl/chefs/rating';
const String chefSearchUrl = '$baseUrl/chefs/search';
