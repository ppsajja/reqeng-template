# <ชื่อกลุ่ม>-reqeng

template สำหรับงาน "ให้ AI สร้างจากสเปก" ในรายวิชา 517 511 Requirements Engineering (AI-Native RE)
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
5. อ่าน `AGENTS.md` ให้จบ กติกาข้อ 8 ใส่ให้แล้ว ไม่ต้องแก้
6. กด Code แล้ว Codespaces สร้างเครื่องใหม่ เปิด Copilot Chat โหมด Agent พิมพ์ `/` ต้องเห็น clarify, plan, tasks, implement
7. commit "spec v1" แล้วเริ่มขั้น 1 ของบทเรียน: `/clarify specs/002-<feature>/spec.md`

## โครงของ repo

```
README.md                      ไฟล์นี้ (ใส่ชื่อกลุ่ม สมาชิก และ reflection ท้ายคาบ)
AGENTS.md                      กติกาที่ AI ต้องทำตาม 7 ข้อ + ข้อ 8 ของรายวิชา
CLAUDE.md                      ชี้ไป AGENTS.md (สำหรับ Claude Code)
prompt-log.md                  AI เพิ่มบันทึกให้ทุกครั้งที่ใช้คำสั่ง (เพิ่มต่อท้ายเท่านั้น)
docs/srs/                      ต้นฉบับจากบทเรียนก่อนหน้า (catalogue, UC, glossary, baseline)
docs/hand-written/             plan.md และ tasks.md ที่กลุ่มเขียนเอง ไว้เทียบกับของ AI
docs/agent-pack-README.md      วิธีใช้ชุดคำสั่ง
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
| spec.md v2 | AI หลัง /clarify ทีมตรวจ diff | 1 |
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
