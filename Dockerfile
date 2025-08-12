# استخدم نسخة بايثون الرسمية
FROM python:3.11

# حدد مجلد العمل داخل الكونتينر
WORKDIR /app

# انسخ ملف requirements.txt للكونتينر
COPY requirements.txt .

# ثبت المكتبات المطلوبة
RUN pip install --no-cache-dir -r requirements.txt

# انسخ باقي ملفات المشروع للكونتينر
COPY . .

# الأمر الذي يشغل السكربت عند تشغيل الكونتينر
CMD ["python", "bot.py"]
