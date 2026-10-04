# <feature>.feature v1.0 | AC-xx-01 ถึง AC-xx-nn | จาก UC-xx และ BR-xx
# เปลี่ยนชื่อไฟล์เป็น <feature>.feature แล้วแทนด้วย Gherkin ของกลุ่มจากบทเรียน Acceptance Criteria
# ภาษา: ไทย ยกเว้นคำสำคัญของ Gherkin และ ID
# ตัวอย่าง: github.com/ppsajja/baanprom-swreqspec/blob/main/specs/002-booking/booking.feature

Feature: UC-xx <ชื่อ use case>
  <เป้าหมายของ use case 1 ถึง 2 บรรทัด>

  Background:
    Given <สภาพตั้งต้นที่ทุก scenario ใช้ร่วมกัน>

  @AC-xx-01 @REQ-xx-nnn
  Scenario: AC-xx-01 <ชื่อ scenario>
    Given <สถานการณ์ตั้งต้น>
    When <สิ่งที่ผู้ใช้หรือระบบภายนอกทำ>
    Then <สิ่งที่มองเห็นได้จากภายนอก ตรวจได้>

  @AC-xx-02 @REQ-BR-nnn @BR-xx
  Scenario Outline: AC-xx-02 <กฎธุรกิจตาม Decision Table>
    Given <...> "<เงื่อนไข>"
    When <...>
    Then <...> "<ผล>" ตามแถว <แถว>

    Examples:
      | แถว | เงื่อนไข | ผล |
      | R1  |         |     |
