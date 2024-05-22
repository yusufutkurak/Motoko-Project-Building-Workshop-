import Debug "mo:base/Debug";
import Blob "mo:base/Blob";
import Cycles "mo:base/ExperimentalCycles";
import Error "mo:base/Error";
import Array "mo:base/Array";
import Nat8 "mo:base/Nat8";
import Nat64 "mo:base/Nat64";
import Text "mo:base/Text";

//import the custom types you have in Types.mo
import Types "Types";
actor {
  let ic : Types.IC = actor ("aaaaa-aa");
    public type CoinList = {
        #BTC;
        #ETH;
        #ICP;
        #SOL;
        #BNB;
        #USDT;
        #TRY;
    };


  public func get_cryptocompare_info(coin_value: CoinList) : async Text {
    var coin = "ICP";
    switch(coin_value) {
      case(#BTC) { coin := "BTC" };
      case(#ETH) { coin := "ETH"};
      case(#ICP) { coin := "ICP"};
      case(#USDT) { coin := "USDT"};
    };
    // URL'yi ayarlayın
    let host : Text = "min-api.cryptocompare.com";
    let url = "https://" # host # "/data/price?fsym=" # coin # "&tsyms=TRY";
    // Başlıkları ayarlayın
    let request_headers = [
        { name = "Host"; value = host },
        { name = "User-Agent"; value = "exchange_rate_canister" },
    ];

    // HTTP isteği için argümanları hazırlayın
    let http_request : Types.HttpRequestArgs = {
        url = url;
        headers = request_headers;
        body = null; // İsteğe bağlı
        method = #get;
    };

    // CYCLES ekleyin (gerekirse)
    Cycles.add(20_949_972_000);

    // HTTP isteğini yapın ve yanıtı bekleyin
    let http_response : Types.HttpResponsePayload = await ic.http_request(http_request);

    // Yanıtı dekode edin
    let response_body: Blob = Blob.fromArray(http_response.body);
    let decoded_text: Text = switch (Text.decodeUtf8(response_body)) {
        case (null) { "No value returned" };
        case (?y) { y };
    };

    // Yanıtın gövdesini döndürün
    decoded_text
  };


}



