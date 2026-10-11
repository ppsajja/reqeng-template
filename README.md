# <ชื่อกลุ่ม>-reqeng

template สำหรับงาน "ให้ AI สร้างจากสเปก" และงาน "Verification, Traceability และ Change" ในรายวิชา 517 511 Requirements Engineering (AI-Native RE)
ภาควิชาคอมพิวเตอร์ คณะวิทยาศาสตร์ มหาวิทยาลัยศิลปากร | ภาคต้น 1/2569

repo นี้คือ "ตัวทำเอง" มีแต่กติกาและโครงเอกสาร ยังไม่มีสเปก และจงใจไม่มีโค้ดหรือโครงโปรเจกต์
เทคโนโลยี (ภาษา framework ฐานข้อมูล) กลุ่มเลือกเองตอน /plan ตามกติกาข้อ 6 ของ AGENTS.md แล้ว AI สร้างโครงให้ใน T-01
ถ้าอยากดูว่าทำเสร็จแล้วหน้าตาเป็นอย่างไร เปิด "ตัวทำตาม" github.com/ppsajja/baanprom-swreqspec ควบคู่กันไป

## ทีม

- ชื่อกลุ่ม:
- สมาชิก:
- feature ที่เลือก (UC-xx):
- เครื่องมือ AI ที่ใช้: (Copilot ใน Codespaces / Claude Code / Cursor)

## เริ่มอย่างไร (ขั้น 0 ของบทเรียน)

1. กด Use this template สร้าง repo ชื่อ `<ชื่อกลุ่ม>-reqeng` ตั้งเป็น public
2. เปลี่ยนชื่อโฟลเดอร์ `specs/002-feature/` เป็น `specs/002-<ชื่อ feature ภาษาอังกฤษตัวเล็ก>/`
   แล้วแทนไฟล์ข้างในด้วยของกลุ่ม: `spec.md`, `<feature>.feature`, `rules.md`, `models.md` (ไฟล์ที่มีให้เป็นแค่โครง)
3. วาง `catalogue.md`, `UC-xx.md`, `glossary.md`, `baseline.md` ของกลุ่มไว้ที่ `docs/srs/`
4. วาง plan.md และ tasks.md ที่กลุ่มเขียนเองคราวที่แล้วไว้ที่ `docs/hand-written/` (AI ไม่อ่านโฟลเดอร์นี้ ไว้เทียบทีหลัง)
5. อ่าน `AGENTS.md` ให้จบ (10 ข้อ) กติกาข้อ 8 ใส่ให้แล้ว ไม่ต้องแก้
6. กด Code แล้ว Codespaces สร้างเครื่องใหม่ เปิด Copilot Chat โหมด Agent พิมพ์ `/` ต้องเห็น clarify, plan, tasks, implement
7. commit "spec v1" แล้วเริ่มขั้น 1 ของบทเรียน: `/clarify specs/002-<feature>/spec.md`

## โครงของ repo

```
README.md                      ไฟล์นี้ (ใส่ชื่อกลุ่ม สมาชิก และ reflection ท้ายคาบ)
AGENTS.md                      กติกาที่ AI ต้องทำตาม 10 ข้อ (agent-pack รุ่น 2)
CLAUDE.md                      ชี้ไป AGENTS.md (สำหรับ Claude Code)
prompt-log.md                  AI เพิ่มบันทึกให้ทุกครั้งที่ใช้คำสั่ง (เพิ่มต่อท้ายเท่านั้น)
docs/srs/                      ต้นฉบับจากบทเรียนก่อนหน้า (catalogue, UC, glossary, baseline)
docs/hand-written/             plan.md และ tasks.md ที่กลุ่มเขียนเอง ไว้เทียบกับของ AI
docs/agent-pack-README.md      วิธีใช้ชุดคำสั่ง รุ่น 2 และวิธีอัปเดต repo ที่สร้างไปแล้ว
docs/shared-constraints-guide.md  วิธีใช้ Constraint กลาง
docs/mockup-guide.md           วิธีเอา mockup เข้าสเปก และรายการตรวจหน้าจอ 6 ข้อ
docs/mockup-template.html      แบบเริ่มต้นของ mockup 1 หน้า
docs/cr-template.md            แบบของคำขอเปลี่ยนแปลง (CR)
docs/rtm-template.md           แบบของตารางตามรอย
docs/constraints-template.md   แบบของไฟล์ Constraint กลาง (คัดลอกไปเป็น specs/000-shared/constraints.md เมื่อบทเรียนสั่ง หรือเมื่อเริ่ม feature ที่สอง)
specs/README.md                ดัชนี feature
specs/002-feature/             โครงของ spec.md, .feature, rules.md, models.md (เปลี่ยนชื่อโฟลเดอร์แล้วแทนด้วยของกลุ่ม)
(ไม่มี backend/ frontend/)      จงใจไม่ให้โครงโค้ดมา กลุ่มเลือกเทคโนโลยีเองตอน /plan แล้ว AI สร้างโครงใน T-01
.github/prompts/               คำสั่ง /clarify /plan /tasks /implement สำหรับ Copilot
.claude/commands/              คำสั่งชุดเดียวกัน สำหรับ Claude Code
.cursor/commands/              คำสั่งชุดเดียวกัน สำหรับ Cursor
```

## ไฟล์ที่จะเกิดขึ้นใน specs/002-<feature>/ ระหว่างบทเรียน

| ไฟล์ | ใครสร้าง | ขั้น |
|---|---|---|
| spec.md v2 | AI หลัง /clarify ทีมตรวจ diff (ถ้าบรรทัด status ของ spec มีคำว่า baselined AI จะไม่แก้ REQ และ AC เอง แต่ร่าง changes/CR-xx.md ให้ทีมอนุมัติก่อน) | 1 |
| plan.md | AI (/plan) | 2 |
| plan-compare.md | กลุ่ม เทียบกับ docs/hand-written/plan.md | 2 |
| tasks.md | AI (/tasks) | 3 |
| tasks-compare.md | กลุ่ม เทียบกับ docs/hand-written/tasks.md | 3 |
| โครงโปรเจกต์ (ชื่อโฟลเดอร์ตาม plan.md ข้อ 2) | AI (/implement T-01) | 4 |
| โค้ดและ test ของแต่ละ task | AI (/implement T-xx) ทีมตรวจ 5 ข้อ | 4 |
| test-run.txt | pytest (ผลรันจริง) | 5 |
| ac-results.md | กลุ่ม | 5 |
| gaps.md, changes/CR-xx.md | กลุ่ม | 6 |
| quality-requirements.md | กลุ่ม | 7 |

## ไฟล์ที่จะเกิดขึ้นในบทเรียน Verification, Traceability และ Change

กลุ่มที่สร้าง repo ไปก่อนแล้ว ให้อัปเดตเป็น agent-pack รุ่น 2 ก่อน (4 ขั้นใน `docs/agent-pack-README.md` หัวข้อ "มี repo ของกลุ่มอยู่แล้ว อัปเดตเป็นรุ่น 2 อย่างไร")

| ไฟล์ | ใครสร้าง | ใช้แบบจาก |
|---|---|---|
| specs/002-<feature>/rtm.md | AI ร่าง กลุ่มตรวจทุกแถว และเขียนช่อง "ทีมตัดสิน" เอง | docs/rtm-template.md |
| specs/002-<feature>/mockups/UI-xx-nn-<ชื่อ>.html และ .png | กลุ่ม (วาดเองหรือให้ AI แปลงจากภาพร่าง) | docs/mockup-template.html |
| specs/002-<feature>/changes/CR-xx.md | AI ร่างจาก /clarify กลุ่มเติมผลกระทบ ผู้อนุมัติตัดสิน | docs/cr-template.md |
| spec.md รุ่นใหม่ (ส่วน 12 หน้าจอ และส่วน 8 แบบบรรทัดอ้าง) | กลุ่มแก้ตาม CR ที่อนุมัติแล้ว | docs/mockup-guide.md ข้อ 5, docs/shared-constraints-guide.md ข้อ 3 |
| specs/000-shared/constraints.md | กลุ่ม (AI ห้ามแก้) | docs/constraints-template.md (คัดลอกมาแล้วลบแถวตัวอย่างออก) |
| plan.md และ tasks.md ที่แก้เฉพาะจุด | AI ตามข้อความสั่งใน docs/mockup-guide.md ข้อ 7 | |
| โค้ดและ test ของ task ใหม่ | AI (/implement T-xx) ทีมตรวจ 5 ข้อ | |
| specs/002-<feature>/ui-review/ui-review.md และภาพหน้าจอจริง | กลุ่ม | docs/mockup-guide.md ข้อ 9 |
| test-run.txt และ ac-results.md รอบใหม่ | ผลรันจริง และกลุ่ม | |
| docs/srs/baseline.md (Baseline B2) | กลุ่ม | |

## วิธีรัน

ยังไม่มี คำสั่งติดตั้งและรัน test จะอยู่ใน plan.md ข้อ 2 หลังกลุ่มเลือกเทคโนโลยี และ AI จะสร้างไฟล์จริงใน T-01
ตัวอย่าง (ถ้าเลือกชุดเดียวกับ repo ตัวทำตาม คือ Python FastAPI + React Tailwind):

```
cd backend && pip install -r requirements.txt && pytest -v -k "AC_"
cd frontend && npm install && npm test
```

## Reflection (เขียนท้ายคาบ 5 บรรทัด)

1. คำถามของ AI ที่ไม่คาดคิด:
2. คำถามของเพื่อนที่ AI ไม่ถาม:
3. กฎที่ AI ละเมิดและจับได้:
4. สิ่งที่สเปกของกลุ่มคุมได้:
5. สิ่งที่หลุด:

## Reflection รอบเปลี่ยนแปลง (เขียนท้ายคาบ 5 บรรทัด)

1. สิ่งที่ตารางตามรอยเจอแต่ test ไม่เจอ:
2. สิ่งที่ mockup พาเข้ามาโดยไม่มีใครขอ:
3. ผลกระทบที่วิเคราะห์พลาด (รู้ตอนไหน):
4. สิ่งที่ไฟล์กลางช่วยได้จริง:
5. สิ่งที่ยังไม่ปิด และใครเป็นเจ้าของ:
