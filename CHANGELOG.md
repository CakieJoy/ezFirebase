# Değişiklik Günlüğü | Changelog

Tüm önemli değişiklikler bu dosyada iki dilde (TR/EN) listelenir.

---

## [0.0.1] - 2025-04-20

### 🇹🇷 Eklendi

- `UpdateData()` fonksiyonu: Mevcut veriyi güncelleme yeteneği eklendi.
- `RemoveData()` fonksiyonu: Belirtilen ref’teki veriyi silme özelliği eklendi.
- `SignUp()` fonksiyonu: Firebase Auth üzerinden kullanıcı kaydı yapılabiliyor. Ekstra olarak RTDB’ye "users/<userUID>" altına veri yazılır.
- `LogIn()` fonksiyonu: Firebase Auth üzerinden kullanıcı girişi yapılabiliyor. (Henüz test edilmemiştir.)

### 🇹🇷 Geliştirmeler

- Fonksiyon isimleri ve argümanları sadeleştirildi ve daha anlaşılır hale getirildi.
- README dosyasına yeni örnek kod blokları ve açıklamalar eklendi.

---

### 🇬🇧 Added

- `UpdateData()` function: Ability to update existing data in the database.
- `RemoveData()` function: Ability to remove/delete specific data from the given ref.
- `SignUp()` function: Firebase Auth user registration with optional "extra" data pushed under "users/<userUID>" in RTDB.
- `LogIn()` function: Firebase Auth user login functionality. (Not yet tested)

### 🇬🇧 Improvements

- Simplified and clarified function names and arguments.
- Updated README with additional code examples and explanations.

---
