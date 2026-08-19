<div align="center">

<img src="static/img/logo-square.png" width="110" alt="StanNG logo">

# ⚡ StanNG

### یک پنل تک‌سرویسهٔ VLESS-over-WebSocket با تم جادوگری

**A single‑service VLESS‑over‑WebSocket panel with a wizarding theme**

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template)
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

<img src="docs/screenshots/login.jpg" width="720" alt="StanNG login screen">

</div>

---

## فهرست | Table of Contents

- [ویژگی‌ها | Features](#-ویژگی‌ها--features)
- [تغییرات نسخه ۱.۴.۱ | What's New in v1.4.1](#-تغییرات-نسخه-۱۴۱--whats-new-in-v141)
- [تصاویر | Screenshots](#-تصاویر--screenshots)
- [نصب سریع | Quick Deploy](#-نصب-سریع--quick-deploy)
- [راه‌اندازی اولیه | First Run](#-راه‌اندازی-اولیه--first-run)
- [متغیرهای محیطی | Environment Variables](#-متغیرهای-محیطی--environment-variables)
- [ساختار پروژه | Project Structure](#-ساختار-پروژه--project-structure)
- [مستندات API | API Reference](#-مستندات-api--api-reference)
- [نکات امنیتی | Security Notes](#-نکات-امنیتی--security-notes)
- [مجوز و اعتبارها | License & Credits](#-مجوز-و-اعتبارها--license--credits)

---

## ✨ ویژگی‌ها | Features

| فارسی | English |
|---|---|
| 🪄 **بدون دیتابیس اضافه** — همه‌چیز در یک فایل JSON محلی ذخیره می‌شود | 🪄 **Zero external database** — everything persists in one local JSON file |
| 👤 **راه‌اندازی با یک کلیک** — اولین بازدید = ساخت نام‌کاربری/رمز؛ همان برای همیشه | 👤 **One-time setup wizard** — first visit creates your username/password, used forever after |
| 📱 **کاملاً واکنش‌گرا برای موبایل** — منوی کناری، جدول‌ها و مودال‌ها روی گوشی هم روان و کامل کار می‌کنند | 📱 **Fully mobile-responsive** — sidebar, tables and modals work smoothly on phones too |
| 📊 **سیستم کاربری پیشرفته** — حجم (GB)، روز اعتبار و سقف درخواست به‌صورت مجزا با قطع خودکار | 📊 **Advanced per-user limits** — quota (GB), expiry (days) and max requests, auto-cutoff on breach |
| 🔌 **کنترل اتصال همزمان** — محدودیت تعداد دستگاه فعال به ازای هر کاربر + قفل روی اولین IP | 🔌 **Max concurrent connections** — per-user device cap + optional lock-to-first-IP |
| ⚙️ **تنظیمات پیشرفته کانفیگ** — Fingerprint، ALPN، SNI اختصاصی (Domain Fronting) و پارامترهای Fragment به‌صورت سراسری قابل تنظیم | ⚙️ **Advanced config tweaks** — global defaults for Fingerprint, ALPN, custom SNI (domain fronting), and Fragment parameters |
| 🎁 **کانفیگ‌های نمایشی خودکار** — هر لینک اشتراک شامل یک ریمارک زندهٔ «حجم/اعتبار باقی‌مانده» و یک پیام «StanNG رایگان است ❤️» است | 🎁 **Forced info configs** — every subscription link includes a live "quota/days left" remark and a "StanNG is Free ❤️" credit entry |
| 🔄 **آپدیت خودکار درون‌پنلی** — با یک کلیک از خود داشبورد آپدیت کنید، بدون از دست دادن کاربران و تنظیمات | 🔄 **One-click in-panel self-update** — update straight from the dashboard, users and settings always preserved |
| 🔗 **لینک اشتراک سازگار با v2rayNG** — خروجی متن ساده (Plain Text) با لینک‌های VLESS قابل شناسایی توسط v2rayNG | 🔗 **v2rayNG‑compatible subscription** — plain‑text output with VLESS links that v2rayNG can parse correctly |
| 🛑 **ضد فروش** — صدور مجدد UUID با یک کلیک برای ابطال آنی لینک‌های قدیمی | 🛑 **Anti-resale** — one-click UUID rotation instantly revokes old links |
| 📱 **صفحه وضعیت اختصاصی** — لینک عمومی برای هر کاربر جهت رصد مصرف بدون نیاز به ورود به پنل | 📱 **Per-user status page** — public read-only link showing usage/devices, no login needed |
| 🌍 **مکان‌یابی خودکار** — تشخیص شهر/کشور سرور از طریق Cloudflare trace API | 🌍 **Auto server geolocation** — resolves edge city/country via Cloudflare's public trace API |
| 🌗 **حالت تاریک/روشن + دو زبانه کامل** — فارسی (راست‌به‌چپ) و انگلیسی، با فونت وزیرمتن محلی | 🌗 **Dark/Light + full bilingual UI** — Persian (RTL) & English, self-hosted Vazirmatn font |
| 🔊 **جلوه صوتی و انیمیشن** — افکت صدا و ترنزیشن‌های نرم بدون هیچ وابستگی خارجی | 🔊 **Sound FX & motion design** — click/success/error cues and smooth transitions, no CDN deps |
| 💬 **دکمه پشتیبانی تلگرام** — دسترسی مستقیم به پشتیبانی از هر صفحه‌ای در پنل | 💬 **Telegram support button** — direct contact access floating on every page |
| ⏱ **بیدارباش خودکار** — پینگ داخلی هر ۱۰ دقیقه برای جلوگیری از خواب سرویس در پلن رایگان | ⏱ **Keep-alive loop** — self-pings every 10 min to dodge free-tier sleep |
| 🔒 **نام پنل غیرقابل‌تغییر برای کاربران** — نام برند شما، ثابت و امن باقی می‌ماند | 🔒 **Panel name locked** — your brand name stays fixed, never editable by anyone with panel access |

---

## 🆕 تغییرات نسخه ۱.۴.۱ | What's New in v1.4.1

- ✅ **رفع مشکل v2rayNG**: پارامترهای `path` و `alpn` با `safe='/,'` encode می‌شوند تا v2rayNG بتواند لینک را به‌درستی شناسایی کند.
- ✅ **خروجی متن ساده (Plain Text)**: لینک اشتراک (`/sub/{uid}`) به‌جای Base64، به‌صورت متن ساده با لینک‌های VLESS ارائه می‌شود.
- ✅ **بازگشت کانفیگ‌های نمایشی (Info Configs)**: دو کانفیگ نمایشی برای وضعیت مصرف و پیام رایگان به لینک اشتراک اضافه شدند.
- ✅ **حذف کامل Clean IP**: این قابلیت به‌طور کامل از کد و رابط کاربری حذف شد.
- ✅ **رفع پروتکل لینک‌ها**: لینک‌های اشتراک (`sub_url`، `sub_json_url`، `status_url`) همیشه با `https://` ساخته می‌شوند.

---

## 🖼 تصاویر | Screenshots

<table>
<tr>
<td width="50%"><img src="docs/screenshots/dashboard.jpg" alt="Dashboard"></td>
<td width="50%"><img src="docs/screenshots/inbounds.jpg" alt="Inbounds / Users table"></td>
</tr>
<tr>
<td align="center"><sub>داشبورد زنده با نمودار ترافیک ساعتی<br>Live dashboard with hourly traffic chart</sub></td>
<td align="center"><sub>مدیریت کاربران / اینباندها<br>User / inbound management</sub></td>
</tr>
<tr>
<td width="50%"><img src="docs/screenshots/links_modal.jpg" alt="Links & QR modal"></td>
<td width="50%"><img src="docs/screenshots/settings.jpg" alt="Settings"></td>
</tr>
<tr>
<td align="center"><sub>لینک‌های اشتراک و QR Code<br>Subscription links & QR code</sub></td>
<td align="center"><sub>تنظیمات عمومی + تنظیمات پیشرفته کانفیگ<br>General settings + advanced config tweaks</sub></td>
</tr>
</table>

<div align="center">
<img src="docs/screenshots/mobile_inbounds.jpg" width="280" alt="Mobile view">
<br><sub>نمای کاملاً واکنش‌گرا روی موبایل — جدول‌ها به کارت تبدیل می‌شوند<br>Fully responsive mobile view — tables reflow into cards</sub>
</div>

---

## 🚀 نصب سریع | Quick Deploy

### 🚂 Railway (توصیه‌شده | Recommended)

1. این ریپازیتوری را Fork کنید یا مستقیم به گیت‌هاب خودتان push کنید.
   Fork this repo (or push it to your own GitHub account).
2. در [railway.app](https://railway.app) → **New Project → Deploy from GitHub repo** را انتخاب کنید.
3. Railway به‌صورت خودکار `railway.json` را تشخیص داده و روی `python main.py` اجرا می‌کند — نیازی به تنظیم چیزی نیست.
   Railway auto-detects `railway.json` and runs `python main.py` — nothing else to configure.
4. پس از دیپلوی، به آدرس سرویس + `/setup` بروید و نام‌کاربری/رمز عبور دلخواه بسازید.
   After deploy, visit `<your-domain>/setup` and create your admin username & password.

> 💡 Railway از IP اختصاصی خودش استفاده می‌کند (نه کلودفلر). اگر فیلتر شد، حالت Fragment را از داخل پنل (تنظیمات → تنظیمات پیشرفته کانفیگ) و در کلاینت فعال کنید.
> Railway uses its own dedicated IPs (not Cloudflare's). If blocked, enable Fragment mode from within the panel (Settings → Advanced Config) and on your client.

### 🌐 Render

1. Fork / push به گیت‌هاب.
2. در [render.com](https://render.com) → **New → Web Service** → ریپازیتوری را وصل کنید؛ `render.yaml` به‌صورت خودکار شناسایی می‌شود.
3. بعد از دیپلوی به `/setup` بروید.

> 💡 روی Render شما پشت شبکهٔ Cloudflare هستید؛ کانفیگ‌ها به‌طور طبیعی از آی‌پی‌های تمیز کلودفلر عبور می‌کنند.
> On Render you sit behind Cloudflare's network, so configs naturally ride clean Cloudflare IPs.

### 💻 اجرای محلی | Local run

```bash
git clone https://github.com/<your-username>/StanNG.git
cd StanNG
pip install -r requirements.txt
python main.py
# → http://localhost:8000/setup
