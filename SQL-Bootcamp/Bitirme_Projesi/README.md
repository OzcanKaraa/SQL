<h2>Bitirme Projesi </h2>
<p> Kurulum : 
1- AWS Hesabý Oluþturun 
2- PostgreSQL Veritabaný Oluþturun 
a. IP adresinizi yarattiginiz PostgreSQL in Inbound Rule kismina 
ekleyin(Security Group) 
3- Power BI Masaüstü uygulamasýný yükleyin 
a. PostgreSQL veritabanýna baðlanabilmek için connection string i 
yeni PostgreSQL baglantisina ekleyin 
b. Aldigini baglanti hatasi icin güvenlik Encrypted connection 
check box ini kaldirin (ders videosunda mevcut) </p>


4- AWS Hesabinizda bir S3 bucket olusturun 
a. test_market_utf_full.csv dosyasini Google Drive dan download 
edip, kendi S3 bucket iniza yukleyin 
Proje : 
1- PostgreSQL'de yeni bir proje kullanýcýsý oluþturun ve bu 
kullanýcýyý projeniz için þema olarak kullanmaya baþlayýn. 
a. test_market_utf_full.csv dosyasýný analiz edin ve yarattiginiz 
kullanicinin semasini kullanarak market_sales_master adinda bir 
tablo oluþturun. Tablo her satira uygun veri tipleri 
kullanmalidir, Varchar, Date, TimeStamp, Numeric gibi. 
3- AWS S3 Import Utility sini kullanarak test_market_utf_full.csv 
dosyasýndaki verieri PostgreSQL'deki market_salesu_master tablosuna 
yükleyin. Gerekli komurlar: 
1-) CREATE EXTENSION IF NOT EXISTS aws_s3 CASCADE; ##Bu 
komut aws_s3 extension i yaratmak icin kullanilir. 
2-) SELECT aws_s3.table_import_from_s3( 
 'market_sales_master', '', '(FORMAT CSV, HEADER 
true)', 
 'sqlcoursebucket', 'test_market_utf_full.csv', 'euwest-3');
–- degisiklik olarak sadece 'sqlcoursebucket' 
parametresini sizin kendi bucket isminizle degistirin. 
Eger eu-west-3 den farkli bir region kullandiysaniz onu 
da degistirmeniz gerekir. Dosya ismi ve tablo ismi de 
yine select icerisinde, farkli isim kullanirsaniz bu 
query I de degistirmeniz gerekir.
4- Market_sales tablosunu kullanarak aþaðýdaki FACT ve DIMENSION 
tablolarýný oluþturun (bunun neden avantajlý olduðunu açýklayýn) 
a. FACT Tablosu: 
i. sales (id, itemcode, ficheno, amount, price, 
linenettotal, linenet, branchnr, salesman, clientcode, 
brandcode, startdate, enddate) 
b. DIMENSION tablolarý: 
i. item (itemcode, itemname, category_name1, 
category_name2, category_name3) 
ii. branch (branchnr, branch, city, region, latitude, 
longitude) 
iii. client (clientcode, clientname, gender) 
iv. brand (brandcode, brand) 
5- 'market_sales_master' tablosunu kaynak olarak kullanarak, 
fact ve dimension tablolarýna verileri yükleyin 
6- sales tablosu uzerinde id, itemcode ve salesman uzerinden ayri 
ayri indexler olusturun. 
a.Bonus Puan : Olusturdugunuz indexleri bir JOIN icinde kullanip, 
explain analyze querysi ile nasil bir avantaj yarattigini 
gosterin. 
7- Fact ve Dimension tablolarýný Joinleyerek aþaðýdaki view lari 
yaratin. 
a. Bölgeye göre toplam satýþ miktarý (region, 
toplam_satis_miktari) 
b. En çok satan ürünler (itemname, satilan_urun_sayisi) 
c. Satýþ temsilcisi performansý (salesman,region, toplam_satis) 
8- Fact ve Dimension tablolarinizi Power BI Masaüstü uygulamasýnin 
Data Source kismina indirin. (Baglanti ve tablo secimleri icin 7/12 
ders kaydinin son kisimlarina bakabilirsiniz) 
9- Power BI uzerinde Fact ve Dimension tablolarinizi Joinleyerek 
a. Magazalarin lokasyonlarini latitude ve longitude kolonalari 
uzerinden Power BI Map gorseli ile gosterin. 
b. En cok satan Marka(brand) ve Urunleri (category_name1) pie 
chart ile gosterin 
c. Bir visual uzerinden en cok satan category_name1, bir alt 
seviyeye inildiginde en cok satan category_name2 bir sonraki 
adimda ise en cok satan category_name3 urunlerini gosteriniz. 
c. En cok satis yapan satis temsilcilerini ve linenettotal 
uzerinden toplam satis degerlerini gosteren ‘clustered bar 
chart’grafigi olusturun 
d. Aya gore linenettotal alani uzerinden ‘pie chart grafigi’ 
olusturup hangi ayda ne kadar satilmis gosterin. Not: Veri 
setimizde (csv dosyasinda) sadece Ocak, Subat ve Mart aylarinin 
verisi mevcut. 
Sonuclariniz alttaki gorsellere benzer olacaktir: 