import Blob "mo:base/Blob";
import Cycles "mo:base/ExperimentalCycles";
import Nat32 "mo:base/Nat32";
import Text "mo:base/Text";
import Types "Types";
import Trie "mo:base/Trie";
import List "mo:base/List";
import Float "mo:base/Float";

actor {
  let ic : Types.IC = actor ("aaaaa-aa");
  type Id = Nat32;

  type Coins_cart = {
    purchase_type: Types.CoinList;
    addCoin: Types.CoinList;
    purchase_amount: Nat32;
  };

  type Wallet = {
    total: Nat32;
    coin_list: List.List<Coins_cart>;
  };
  
  private stable var next : Id = 0;
  private stable var cart : Trie.Trie<Id, Coins_cart> = Trie.empty();


  public func get_coin_compare(coin_value_1: Types.CoinList, coin_value_2: Types.CoinList ) : async Text {
    var coin_1 = "ICP";
    var coin_2 = "USDT";
    switch(coin_value_1) {
      case(#BTC) { coin_1 := "BTC" };
      case(#ETH) { coin_1 := "ETH"};
      case(#ICP) { coin_1 := "ICP"};
      case(#SOL) { coin_1 := "SOL"};
      case(#BNB) { coin_1 := "BNB"};
      case(#USDT) { coin_1 := "USDT"};
      case(#TRY) { coin_1 := "TRY"};
    };

      switch(coin_value_2) {
      case(#BTC) { coin_2 := "BTC" };
      case(#ETH) { coin_2 := "ETH"};
      case(#ICP) { coin_2 := "ICP"};
      case(#SOL) { coin_2 := "SOL"};
      case(#BNB) { coin_2 := "BNB"};
      case(#USDT) { coin_2 := "USDT"};
      case(#TRY) { coin_2 := "TRY"};
    };
    // URL'yi ayarlayın
    let host : Text = "min-api.cryptocompare.com";
    let url = "https://" # host # "/data/price?fsym=" # coin_1 # "&tsyms=" # coin_2 # "";
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

  public func add_cart(coin_cart: Coins_cart) : async Id {
    let id = next;
    next += 1;
    cart := Trie.replace(
      cart,
      key(id),
      Nat32.equal,
      ?coin_cart,
    ).0;
    return id;
  };

  public query func read(id : Id) : async ? Coins_cart {
    let result = Trie.find(cart, key(id), Nat32.equal);
    return result;
  };


  // public func order() : async Wallet{
    
  // };


  private func key(x : Id) : Trie.Key<Id> {
    return { hash = x; key = x };
  };

}



