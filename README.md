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
- Kullanıcıdan üç adet veri girişi ister
    - `addCoin` sepete eklenecek coin
    - `purchase_type` sepete eklenecek coinin satın alınacak coin tipi
    - `purchase_amount` ne kadrlık coin alınacağı
- Kullanıcıdan seçimleri alır sonrasında sepete ekler
- Geriye sepete eklenen işlemin Id bilgisini döndürür
  
  <img width="925" alt="Ekran Resmi 2024-05-24 14 09 25" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/76e42462-ce4b-4c02-852f-5a1e0996ed3a">
 
  - Bu örnekte 120 dolarlık ICP coin sepete ekliyoruz, işlemin Id bilgisi 5 olarak geri döndrülüyor.

