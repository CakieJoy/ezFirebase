# EzFirebase

bu paket Firebase RTDB (Realtime Database) içerisinden kolayca veri gönderip/veri almak içindir ileride veri silme/veri düzenleme gibi fonksiyonlarda eklenicektir.

# Kullanım

### Veri Çekme :

```
final data = await EzFirebase.GetDB(ref: "asdaf/tets"); // Veri çekme
print(data); // Çekilen Veriyi Yazdırma
```

### Veri Ekleme :

```
EzFirebase.AddDB(ref: "your/ref/path", name: "Username", data: "Test Data");
```

### Veri Değiştirme :

```
EzFirebase.UpdateData(ref: "posts/hi", new_data: "Hello!");
```

### Veri Silme :

```
EzFirebase.RemoveData(ref: "test/old_data");
```

### Auth İle Kullanıcı Kaydı :

Ufak Bir Not : burada "extra" olan kısım RTDB'de "users/<userUID>" kısmına veri ekliyor

```
EzFirebase.SignUp(
    email: emailController.text,
    password: passwordController.text,
    extra: emailController.text);
```

### Auth İle Kullanıcı Girişi :

Bu özellik test edilmemiştir!

```
EzFirebase.LogIn(email: emailController.text, password: passwordController.text);
```
