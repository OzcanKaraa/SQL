<h2>Bitirme Projesi </h2>
<p> <b>KURULUM : </b></p>
<p>1- AWS Hesabı Oluşturun </p>
<p>2- PostgreSQL Veritabanı Oluşturun 
a. IP adresinizi yarattiginiz PostgreSQL in Inbound Rule kismina 
ekleyin(Security Group) </p>
<p>3- Power BI Masaüstü uygulamasını yükleyin 
a. PostgreSQL veritabanına bağlanabilmek için connection string i 
yeni PostgreSQL baglantisina ekleyin 
b. Aldigini baglanti hatasi icin güvenlik Encrypted connection 
check box ini kaldirin  </p>
<p></p>

<p> 4- AWS Hesabinizda bir S3 bucket olusturun 
a. test_market_utf_full.csv dosyasini Google Drive dan download 
edip, kendi S3 bucket iniza yukleyin </p>
<b><p>PROJE :</p></b>
<p>1- PostgreSQL'de yeni bir proje kullanıcısı oluşturun ve bu 
kullanıcıyı projeniz için şema olarak kullanmaya başlayın.</p> 
a. test_market_utf_full.csv dosyasını analiz edin ve yarattiginiz 
kullanicinin semasini kullanarak market_sales_master adinda bir 
tablo oluşturun. Tablo her satira uygun veri tipleri 
kullanmalidir, Varchar, Date, TimeStamp, Numeric gibi. </p>
<p>3- AWS S3 Import Utility sini kullanarak test_market_utf_full.csv 
dosyasındaki verieri PostgreSQL'deki market_salesu_master tablosuna 
yükleyin. Gerekli komurlar: </p>
<p>1-) CREATE EXTENSION IF NOT EXISTS aws_s3 CASCADE; ##Bu 
komut aws_s3 extension i yaratmak icin kullanilir. </p>
<p>2-) SELECT aws_s3.table_import_from_s3( 
 'market_sales_master', '', '(FORMAT CSV, HEADER 
true)', 
 'sqlcoursebucket', 'test_market_utf_full.csv', 'euwest-3');
–- degisiklik olarak sadece 'sqlcoursebucket' 
parametresini sizin kendi bucket isminizle degistirin. 
Eger eu-west-3 den farkli bir region kullandiysaniz onu 
da degistirmeniz gerekir. Dosya ismi ve tablo ismi de 
yine select icerisinde, farkli isim kullanirsaniz bu 
query I de degistirmeniz gerekir.</p>
<p>4- Market_sales tablosunu kullanarak aşağıdaki FACT ve DIMENSION 
tablolarını oluşturun (bunun neden avantajlı olduğunu açıklayın) </p>
<p>a. FACT Tablosu: 
i. sales (id, itemcode, ficheno, amount, price, 
linenettotal, linenet, branchnr, salesman, clientcode, 
brandcode, startdate, enddate) </p>
<p>b. DIMENSION tabloları: 
i. item (itemcode, itemname, category_name1, 
category_name2, category_name3) 
ii. branch (branchnr, branch, city, region, latitude, 
longitude) 
iii. client (clientcode, clientname, gender) 
iv. brand (brandcode, brand) </p>
<p>5- 'market_sales_master' tablosunu kaynak olarak kullanarak, 
fact ve dimension tablolarına verileri yükleyin </p>
<p>6- sales tablosu uzerinde id, itemcode ve salesman uzerinden ayri 
ayri indexler olusturun.</p> 
<p>a.Bonus Puan : Olusturdugunuz indexleri bir JOIN icinde kullanip, 
explain analyze querysi ile nasil bir avantaj yarattigini 
gosterin.</p> 
<p>7- Fact ve Dimension tablolarını Joinleyerek aşağıdaki view lari 
yaratin. </p> 
<p>a. Bölgeye göre toplam satış miktarı (region, 
toplam_satis_miktari) </p> 
<p>b. En çok satan ürünler (itemname, satilan_urun_sayisi) </p> 
<p>c. Satış temsilcisi performansı (salesman,region, toplam_satis) </p> 
<p>8- Fact ve Dimension tablolarinizi Power BI Masaüstü uygulamasınin
Data Source kismina indirin. </p> 
<p>9- Power BI uzerinde Fact ve Dimension tablolarinizi Joinleyerek </p> 
<p>a. Magazalarin lokasyonlarini latitude ve longitude kolonalari 
uzerinden Power BI Map gorseli ile gosterin.</p>  
<p>b. En cok satan Marka(brand) ve Urunleri (category_name1) pie 
chart ile gosterin </p> 
<p>c. Bir visual uzerinden en cok satan category_name1, bir alt 
seviyeye inildiginde en cok satan category_name2 bir sonraki 
adimda ise en cok satan category_name3 urunlerini gosteriniz. </p> 
<p>d. En cok satis yapan satis temsilcilerini ve linenettotal 
uzerinden toplam satis degerlerini gosteren ‘clustered bar 
chart’grafigi olusturun </p> 
<p>e. Aya gore linenettotal alani uzerinden ‘pie chart grafigi’ 
olusturup hangi ayda ne kadar satilmis gosterin. Not: Veri 
setimizde (csv dosyasinda) sadece Ocak, Subat ve Mart aylarinin 
verisi mevcut. </p> 



