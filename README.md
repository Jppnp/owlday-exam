## 1.เมื่อเกิดปัญหาโค้ดติดบั๊กจงอธิบายสิ่งที่ต้องทำเป็นสเต็ป
* **Bug ที่เกิดขึ้นระหว่าง Complie (Syntax error)** 
    * อ่านข้อความที่ Error แจ้งเตือน เพื่อทำความเข้าใจว่าเกิดปัญหาขึ้นในขั้นตอนใด
    * แก้ไขด้วยตนเองก่อน หากไม่ได้ค้นหาใน Internet ด้วย Keyword ที่สำคัญ
* **Bug ที่เกิดขึ้นจากหลังจาก Complie สำเร็จ (Logical error)**
    * หา function ทั้งหมดที่เกี่ยวข้องกับ feature ที่ทำให้เกิดความผิดพลาด
    * หลังจากนั้น ตรวจสอบ return value ของ function ที่เกี่ยวข้อง (type, value) 
    * แก้ไขข้อผิดพลาด และทดสอบการทำงานใหม่
---------------------------
## 2.อธิบายความแตกต่างระหว่าง Middleware และ Interceptor ใน NestJS และให้ยกตัวอย่างการใช้งานของแต่ละอัน
* **Middleware**
    * function ที่ใช้ในการจัดการและปรับแต่ง request ที่เข้ามาก่อนที่จะถูกส่งไป controller โดยสามารถปรับแต่งในส่วนของ headers และ body ของ request ได้
    * อย่างเช่น การตรวจสอบ (Authentication) ด้วย token ที่อยู่ใน request headers ก่อนที่จะส่งต่อไปยัง function
* **Interceptor**
    * คล้ายกับ Middleware แต่สามารถจัดการกับ response ที่ได้หลังจากการทำงานของ controller ก่อนที่จะส่งไปให้กับ client ได้
    * อย่างเช่น การเก็บ log เมื่อ controller ส่งออกข้อมูลออกไปให้ client
---------------------------
## 3.อธิบายและแสดงตัวอย่างการใช้งาน Guards ใน NestJS เพื่อการรับรองการเข้าถึงและการตรวจสอบสิทธิ์ในเส้นทางของ API
* Guards ใน NestJS เป็นคลาสที่ใช้ในการตรวจสอบสิทธิ์ของ API ก่อนที่ controller จะทำงาน (access control)
* อย่างเช่น เมื่อ controller ที่มีการเรียกใช้ guards จะมีการตรวจสอบสิทธิ์ของผู้ที่เข้ามาใช้งาน หากไม่มีสิทธิ์การใช้งาน guards จะปฏิเสธ และส่ง response กลับไปยัง client
---------------------------
