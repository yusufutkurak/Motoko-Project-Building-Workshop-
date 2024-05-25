# ICP-HUB Türkiye Project Building Workshop

Bu projede şunları öğreneceksiniz:

Basit bir To-Do uygulamasını Motoko kullanarak oluşturmayı.

Motoko ile CRUD operasyonlarını HashMap veri yapısı kullanarak gerçekleştirmeyi.

## Kurulum
### Windows
- Windows için ilk önce powershell uygulamasını yönetici olarak çalıştırıyoruz
- Sonra terminala aşağıdaki kodları yapıştırıp çalıştırmamız gerekli
```
wsl --install
```
- Burada wsl yüklendikten sonra bilgisayarın yeniden başlatılması gerekebilir
```
 wsl --install -d Ubuntu-22.04
```
```
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
```
- Burada yilk seçeneği seçerek standart kurulum ile devam edebiliriz
<img width="293" alt="Ekran Resmi 2024-05-25 10 32 54" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/d688fd81-035e-47bf-b3f7-d339e815b2e0">

### MacOS - Linux
- MacOS ve  Linux için kurlum çok daha basit
```
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
```
- Bu komutu çalıştırmamız yeterli, ilk seçeneği seçerek standart kurlum yapabilirsiniz

## Proje oluşturma
- Öncelikle projemizi oluşturmak istediğimiz dosya dizinine girmemiz gerekli
- Bunun için terminale aşağıdaki kodu yapıştırıp masaüstüne girebilirsiniz
```
cd Desktop
```
- Sonrasında ise yeni proje oluşturmak için bir kod daha yazmamız yeterli
```
dfx new project_name
```
- Projemiz oluşturulurken bize 3 adet seçenek sunacaktır
- Burada ilk kısımda backand kısmını geliştireceğimiz programlama dilini seçmemiz gerekiyor (Bu proje için Motoko seçmemiz yeterli)
  
<img width="478" alt="Ekran Resmi 2024-05-25 10 37 46" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/da528e14-c594-44f0-9e1a-2224ba27ff54">


- İkinci seçenekte frontend kısmı için hangi framework ve programlama dilini kullanacağımızı seçmemiz gerekiyor
  
<img width="491" alt="Ekran Resmi 2024-05-25 10 37 58" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/5936504b-42c3-4e1d-aa5b-7edf8bb4715d">

- Üçücü seçenekte Internet Identity seçmemiz yeterli olacaktır

<img width="407" alt="Ekran Resmi 2024-05-25 10 38 08" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/498471bc-bd44-4fa7-bc07-2e4ea54a92fc">

- Sonrasında Vscode veya hangi derleyiciyi kullanıyorsanız main.mo dosyasına girip kodlarınızı yazmaya başlayabilirsiniz.

### Projeyi deploy etmek
- VScode da terminalimizi ikiye bölmemiz lazım, bir kısımdan projeyi başlatıp diğer kısımdan deploy edeceğiz.
  
  <img width="1396" alt="Ekran Resmi 2024-05-25 11 05 52" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/cd5c5598-2c96-4539-928d-74788bdc337a">
    - Resimde gördüğünüz gibi terminali ikiye böldüm ilk terminale `dfx start --clean komutunu` yazdım ilk olarak bunu çalıştıracağız
    <img width="1391" alt="Ekran Resmi 2024-05-25 11 06 36" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/ef7c8ce0-5f73-4bfd-8dee-8023151f8f97">

- İlk komutu çalıştırdıktan sonra diğer terminalden `dfx deploy` komutunu çalıştırdığımız zaman projemiz deploy edilecektir
  
  <img width="714" alt="Ekran Resmi 2024-05-25 11 07 16" src="https://github.com/yusufutkurak/Motoko-Project-Building-Workshop-/assets/107929430/682fe020-899d-4e5a-a7b9-a5b4a9a13f52">

- Sonrasında size verdiği url ile CandidUI aracılığında projenizi test edebilirsiniz