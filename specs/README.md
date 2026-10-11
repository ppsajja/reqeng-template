# ดัชนี specs

| โฟลเดอร์ | Use case | ฟีเจอร์ | สถานะ | ผู้รับผิดชอบ |
|---|---|---|---|---|
| 000-shared (ยังไม่มี สร้างเมื่อพร้อม) | ทุก use case | Constraint กลางที่ใช้กับทุก feature (constraints.md) ไม่ใช่ feature คัดลอกแบบจาก docs/constraints-template.md | | RE lead ของกลุ่ม |
| 002-<feature> | UC-xx | <ชื่อ feature> | Draft v1 | <ชื่อกลุ่ม> |

กติกา: 1 โฟลเดอร์ = 1 ฟีเจอร์ระดับ use case ชื่อโฟลเดอร์ขึ้นต้นด้วยเลข 3 หลัก ตามด้วยชื่อฟีเจอร์ภาษาอังกฤษตัวเล็ก
ใช้เลข 002 ให้ตรงกับ repo ตัวทำตาม (baanprom-swreqspec) จะได้เทียบไฟล์กันง่าย
เลข 000 สงวนไว้ให้ของที่ใช้ร่วมกันทุก feature spec.md ของทุก feature อ้าง Constraint กลางด้วยบรรทัดเดียวในส่วน 8 (ดู docs/shared-constraints-guide.md)
