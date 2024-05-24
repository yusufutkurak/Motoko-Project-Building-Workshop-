# ICP-HUB Türkiye Project Building Workshop

Bu projede şunları öğreneceksiniz:

- Motoko API fonksiyonlarının kullanımı
- CRUD işlemleri (create, delete, update, read)
- Canister kullanarak HTTP isteği yollama
- Gelen sonuçları işleme
- Veri tiplerini ayarlama
- Trie yapısının kullanımı
## Fonksiyonlar
### get_coin_compare( )
Bu fonksiyon içine iki adet parametre alır, bunlar bizim coin listemizdeki verilerdir. Bu veri tipleri `Types.mo` dosyasında oluşturulmuştur.
- Kullanıcıdan iki adet veri girişi alır
    - `Coin_1` Miktarı öğrenilmek istenen coin
    - `Coin_2'` Coin_1 in hangi coine göre ne kadar değeri olduğu
    - Coin_1 in Coin_2 tipinden değerini döndürür
- `http_request` http isteğimiz için gerekli parametreleri tutan değişken tipidir
- `http_response` http isteğinin geri dönüş değerini tutan değişkenimizdir
- Geriye sepete eklenen işlemin Id bilgisini döndürür
    - `Coin_1` Miktarı öğrenilmek istenen coin
    - `Coin_2'` Coin_1 in hangi coine göre ne kadar değeri olduğu
    - Coin_1 in Coin_2 tipinden değerini döndürür
      
    <img width="913" alt="Ekran Resmi 2024-05-24 15 28 58" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/ea032b6f-efbd-4a3b-93a5-5365f31440cc">

    - Bu örnekte http isteği yapılarak 1 ICP coin kaç TRY sorgusu yapılmıştır.


### add_cart()
Bu fonksiyon kullanıcıdan alınan bilgilere göre istenilen miktarda coini istenilen coin tipinde sepete eklememizi sağlar.
- Kullanıcıdan üç adet veri girişi ister
    - `addCoin` sepete eklenecek coin
    - `purchase_type` sepete eklenecek coinin satın alınacak coin tipi
    - `purchase_amount` ne kadrlık coin alınacağı
- Kullanıcıdan seçimleri alır sonrasında sepete ekler
- Geriye sepete eklenen işlemin Id bilgisini döndürür
  
  <img width="925" alt="Ekran Resmi 2024-05-24 14 09 25" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/76e42462-ce4b-4c02-852f-5a1e0996ed3a">
 
  - Bu örnekte 120 dolarlık ICP coin sepete ekliyoruz, işlemin Id bilgisi 5 olarak geri döndrülüyor.
### read()
Bu fonksiyon aldığı işlem Id'sine göre o işlemin bilgilerini geri döndürür.

![Ekran Resmi 2024-05-24 16 49 17](https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/e0b5e36f-43e7-4c0a-822f-366a60b8fc40)


