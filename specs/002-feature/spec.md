# SPEC-<รหัส feature> | <ชื่อ feature> (UC-xx)

version: 1.0 | status: baselined (B1) หรือ draft | owner: <กลุ่ม> / PO: SH-xx | date: <วันที่>
baseline: B1 (<วันที่>) | supersedes: | related: | feature file: <feature>.feature v1.0
Constraint กลาง: specs/000-shared/constraints.md รุ่น x.y (ถ้ามี) | mockups: UI-xx-01 ถึง UI-xx-nn (ถ้ามี)

ใส่สเปกที่กลุ่มเขียนในบทเรียน Living Specification แทนไฟล์นี้ทั้งไฟล์ (โครง 11 ส่วนด้านล่างเป็นตัวช่วยตรวจว่าครบ ส่วน 12 เพิ่มเมื่อมี mockup)
ตัวอย่างที่กรอกครบ: github.com/ppsajja/baanprom-swreqspec/blob/main/specs/002-booking/spec.md

## Change Log

| เวอร์ชัน | วันที่ | เปลี่ยนอะไร | เพราะอะไร | ใคร |
|---|---|---|---|---|
| 1.0 (v1) | | ประกอบ 11 ส่วน เข้า B1 | | กลุ่ม |

## 1. Intent
[ปัญหาและคุณค่า 3 ถึง 5 บรรทัด อ้าง PB-xx, EV-xx]

## 2. Scope และ Non-goals
In: [สิ่งที่ feature นี้ทำ]
Non-goals: [อย่างน้อย 3 ข้อ พร้อมเหตุผลและรหัสที่เกี่ยว]

## 3. Actors และ Context
[ผู้ใช้ ระบบภายนอก อ้าง MD-CTX-xx ใน models.md]

## 4. Requirements
ข้อความต้นฉบับอยู่ใน docs/srs/catalogue.md ห้ามแก้ที่นี่

| ID | สรุป (ไม่เกิน 12 คำ) | MoSCoW | Conf. | AC | หมายเหตุ |
|---|---|---|---|---|---|
| REQ-xx-nnn | | Must | High | AC-xx-nn | |

## 5. Behaviour
[UC-xx, MD-STM-xx, BR-xx ใน rules.md, glossary ที่ใช้]

## 6. Acceptance Criteria
ไฟล์ <feature>.feature (AC-xx-01 ถึง AC-xx-nn)
ครบเมื่อ: ทุก path ใน UC มี scenario | ทุกแถว Decision Table มี example | ไม่มี Then ที่มองไม่เห็นจากภายนอก

## 7. Data
[entity และ attribute ที่แตะ ติดป้าย PII อ้าง data dictionary]

## 8. Constraints
[เลือกแบบใดแบบหนึ่ง แล้วลบอีกแบบออก]

[แบบ ก ยังไม่มีไฟล์กลาง (feature แรก ก่อนบทเรียน Verification, Traceability และ Change)]
[REQ-CON-xx และข้อจำกัดเทคโนโลยี ถ้าไม่มีให้เขียนว่า "ไม่มีข้อจำกัดเรื่องภาษาหรือ framework ทีมเลือกเอง"]

[แบบ ข มีไฟล์ specs/000-shared/constraints.md แล้ว (ดู docs/shared-constraints-guide.md)]
Constraint กลาง: ใช้ทุกข้อใน specs/000-shared/constraints.md รุ่น x.y (ห้ามคัดลอกข้อความมาไว้ที่นี่)
ข้อยกเว้นของ feature นี้: [ไม่มี หรือ รหัส เหตุผล และผู้อนุมัติ]
เฉพาะ feature นี้:
- [REQ-CON / REQ-SEC / REQ-PRV ที่ใช้กับ feature นี้อย่างเดียว ถ้าไม่มีให้เขียนว่า "ไม่มี"]

## 9. Open Questions และ Assumptions
| ID | คำถาม / สมมติฐาน | เจ้าของ | กำหนด | พฤติกรรมชั่วคราว |
|---|---|---|---|---|
| Q-xx | | | | |
| AS-xx | | | | |

## 10. Decision Log
| ID | ตัดสินใจอะไร | ทางเลือกที่ปฏิเสธ | ผู้ตัดสิน | วันที่ |
|---|---|---|---|---|

## 11. AI Disclosure
[ส่วนไหนใช้ AI ร่าง, prompt-log.md บันทึกที่เท่าไร, ใครตรวจ]

## 12. หน้าจอ (UI)
[เพิ่มส่วนนี้เมื่อมี mockup ที่ตกลงกับผู้ใช้หรือ PO แล้ว ดูวิธีใน docs/mockup-guide.md ถ้า spec อยู่ใน Baseline ต้องเพิ่มผ่าน CR]
mockup อยู่ในโฟลเดอร์ mockups/ (ไฟล์ .html ให้ AI อ่าน ไฟล์ .png ให้คนดู) ตกลงกับ SH-xx วันที่ <วันที่> (EV-xx)
ถ้า mockup กับข้อความใน spec ขัดกัน ให้ถือ spec เป็นหลัก แล้วเพิ่มเป็น Q-xx

- UI-xx-01 <ชื่อหน้า>: mockups/UI-xx-01-<ชื่อ>.html (<จำนวน> สถานะ)
  รองรับ: REQ-xx-nnn
  ต้องตรง: [ข้อความ ปุ่ม ลำดับ หรือพฤติกรรมที่ผู้ใช้ตกลงแล้ว เขียนให้ตรวจได้ด้วย test หรือด้วยตา คั่นแต่ละข้อด้วย |]
  ยืดหยุ่นได้: [สี ระยะห่าง การจัดวาง]
