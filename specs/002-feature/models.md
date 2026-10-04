# โมเดลที่ feature นี้ใช้ (MD-CTX-xx, MD-DOM-xx, MD-STM-xx, MD-SEQ-xx)

เวอร์ชัน 1.0 เข้า Baseline B1 | เขียนด้วย Mermaid เปิดดูภาพได้บน GitHub
แปลงจากภาพในบทเรียน Integrated Requirements Modelling ของกลุ่ม
ตัวอย่าง: github.com/ppsajja/baanprom-swreqspec/blob/main/specs/002-booking/models.md

## MD-CTX-xx Context Diagram (เฉพาะส่วนที่ feature นี้แตะ)

```mermaid
flowchart LR
  A[ผู้ใช้หลัก] -->|คำขอ| S((ระบบของกลุ่ม))
  S -->|IF-01 ...| X[ระบบภายนอก]
```

## MD-DOM-xx Domain Model

```mermaid
classDiagram
  class Entity1 { id; attr PII REQ-PRV-xxx }
  class Entity2 { id; status }
  Entity1 "1" --> "0..*" Entity2
```

## MD-STM-xx วงจรชีวิตของ <entity หลัก>

```mermaid
stateDiagram-v2
  [*] --> สถานะ1 : เหตุการณ์
  สถานะ1 --> สถานะ2 : เหตุการณ์ (BR-xx)
  สถานะ2 --> [*]
```

## MD-SEQ-xx ลำดับการคุยกับระบบภายนอก (ขั้นที่มี exception)

```mermaid
sequenceDiagram
  participant U as ผู้ใช้
  participant S as ระบบ
  participant X as ระบบภายนอก (IF-01)
  U->>S: ...
  S->>X: ...
  alt ตอบทัน
    X-->>S: ...
  else ไม่ตอบใน timeout
    S->>S: ... (Q-xx)
  end
```
