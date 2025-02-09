class EndPoints {
  static const _baseUrl = "https://kanz.nixtzone.com";

  //* auth
  static const signUp = "$_baseUrl/api/v1/auth/vendor/register";
  static String login(String email, String password) {
    return "$_baseUrl/api/v1/auth/vendor/login?email=$email&password=$password";
  }

  //* get packages
  static String getPackages(String email, String password) {
    return "$_baseUrl/api_v1_vendor_package_view?email=$email&password=$password";
  }

  //* profile
  static String getDataProfile(String email, String password) {
    return "$_baseUrl/api/v1/vendor/profile?email=$email&password=$password";
  }

  static String updateProfile(String fName, String lName, String phone) {
    return "$_baseUrl/api/v1/vendor/update-profile?f_name=$fName&l_name=$lName&phone=$phone";
  }

  //* foods
  static String getFoodReport(orderId, limit, offset) {
    return "$_baseUrl/api/v1/vendor/get-food-wise-report?order_id=$orderId&limit=$limit&offset=$offset";
  }

  //* get Disbursement Report
  static String getDisbursementReport(orderId, limit, offset) {
    return "$_baseUrl/api/v1/vendor/get-disbursement-report?order_id=$orderId&limit=$limit&offset=$offset";
  }

  //* translations
  static String getTransactionReport(limit, offset) {
    return "$_baseUrl/api/v1/vendor/get-transaction-report?limit=$limit&offset=$offset";
  }

  static String generateTransaction(orderId) {
    return "$_baseUrl/api/v1/vendor/generate-transaction-statement?order_id=$orderId";
  }

  static String subscriptionTransaction(orderId, limit, offset, from, to) {
    return "$_baseUrl/api/v1/vendor/subscription-transaction?order_id=$orderId&limit=$limit&offset=$offset&from=$from&to=$to";
  }

  //* wallet
  static const wallet = "$_baseUrl/api/v1/vendor/make-wallet-adjustment";
  static const walletPayment = "$_baseUrl/api/v1/vendor/wallet-payment-list";

  //* payment methods
  static String makeCollectedCashPayment(payWith, amount, callback) {
    return "$_baseUrl/api/v1/vendor/make-collected-cash-payment?payment_gateway=$payWith&amount=$amount&callback=$callback";
  }

  static String updateBankInfo(String holderName, account, branch, bankName) {
    return "$_baseUrl/api/v1/vendor/update-bank-info?holder_name=$holderName&account_no=$account&branch=$branch&bank_name=$bankName";
  }

  //* notifications
  static const notifications = "$_baseUrl/api/v1/vendor/notifications";

  //* earningInfo
  static const earningInfo = "$_baseUrl/api/v1/vendor/earning-info";

  //* orders
  static const getProductList = "$_baseUrl/api/v1/vendor/get-products-list";

  static String orderDetails(orderId) {
    return "$_baseUrl/api/v1/vendor/order-details?order_id=$orderId";
  }

  static String completedOrders(limit, offset,status){
    return "$_baseUrl/api/v1/vendor/completed-orders?limit=$limit&offset=$offset&status=$status";
  }


  static String getOrderReport(orderId, limit, offset) {
    return "$_baseUrl/api/v1/vendor/get-order-report?order_id=$orderId&limit=$limit&offset=$offset";
  }

  static String getAllOrders(String email, String password) {
    return "$_baseUrl/api/v1/vendor/all-orders?email=$email&password=$password";
  }

  static String currentOrders(String email, String password) {
    return "$_baseUrl/api/v1/vendor/current-orders?email=$email&password=$password";
  }

 //? put
  static String updateOrderStatus(orderId, status, reason, otp) {
    return "$_baseUrl/api/v1/vendor/update-order-status?order_id=$orderId&status=$status&reason=$reason&otp=$otp";
  }

  //*updateActiveStatus
  static const updateActiveStatus =
      "$_baseUrl//api/v1/vendor/update-active-status";

  //* campaign
  static const campaign = "$_baseUrl/api/v1/vendor/campaign-leave";
  static const updateAnnouncment = "$_baseUrl/api/v1/vendor/update-announcment";

  static String campaignJoin(id) {
    return "$_baseUrl/api/v1/vendor/campaign-join?campaign_id=$id";
  }

  static String getCampaignOrderOrderReport(orderId, limit, offset) {
    return "$_baseUrl/api/v1/vendor/get-campaign-order-report?order_id=$orderId&limit=$limit&offset=$offset";
  }

  //* withdraw
  static String requestWithdraw(id, amount) {
    return "$_baseUrl/api/v1/vendor/request-withdraw?id=$id&amount=$amount";
  }

  static String getWithdrawMethodList(orderId, limit, offset, from, to) {
    return "$_baseUrl/api/v1/vendor/get-withdraw-method-list?order_id=$orderId&limit=$limit&offset=$offset&from=$from&to=$to";
  }

  static String withdrawMethodList(orderId, limit, offset, from, to) {
    return "$_baseUrl/api/v1/vendor/withdraw-method/list?order_id=$orderId&limit=$limit&offset=$offset&from=$from&to=$to";
  }

  static String withdrawMethodStore(id) {
    //!post
    return "$_baseUrl/api/v1/vendor/withdraw-method/store?withdraw_method_id=$id";
  }

  static String withdrawMethodMakeDefault(id, typeBoolean) {
    //!post
    return "$_baseUrl/api/v1/vendor/withdraw-method/make-default?id=$id&is_default=$typeBoolean";
  }

  static String withdrawMethodDelete(id) {
    return "$_baseUrl/api/v1/vendor/withdraw-method/delete?id=$id";
  }
}
