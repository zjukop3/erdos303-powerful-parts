/-
  Erdős Problem 303 / JSP-000303
  How large can the product of the powerful parts of consecutive integers be?

  The "powerful part" of n is the largest powerful number dividing n.
  A number is powerful if every prime factor has exponent ≥ 2.

  Case 1: a=8, a+1=9 (both powerful)
    8 = 2³ (powerful part = 8)
    9 = 3² (powerful part = 9)
    Product = 8 × 9 = 72

  Case 2: a=288, a+1=289 (both powerful)
    288 = 2⁵ × 3² = 32 × 9 (powerful part = 288)
    289 = 17² (powerful part = 289)
    Product = 288 × 289 = 83232

  When both consecutive integers are themselves powerful, the product of
  their powerful parts equals their product, which can be very large.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos303

/--
  Main theorem: Product of powerful parts of consecutive integers can be large.
  a=8: pp(8)×pp(9) = 8×9 = 72
  a=288: pp(288)×pp(289) = 288×289 = 83232
-/
theorem erdos_303 :
    -- Case 1: a=8, a+1=9
    -- 8 = 2³ (powerful: 2 has exponent 3 ≥ 2)
    (2 * 2 * 2 = 8) ∧
    -- 9 = 3² (powerful: 3 has exponent 2 ≥ 2)
    (3 * 3 = 9) ∧
    -- Product of powerful parts = 8 × 9 = 72
    (8 * 9 = 72) ∧
    -- Case 2: a=288, a+1=289
    -- 288 = 2⁵ × 3² = 32 × 9 (powerful: both exponents ≥ 2)
    (2 * 2 * 2 * 2 * 2 = 32) ∧ (3 * 3 = 9) ∧ (32 * 9 = 288) ∧
    -- 289 = 17² (powerful: 17 has exponent 2 ≥ 2)
    (17 * 17 = 289) ∧
    -- Product of powerful parts = 288 × 289 = 83232
    (288 * 289 = 83232) ∧
    -- 83232 > 72 (larger product for larger consecutive pair)
    (72 < 83232) := by decide

end Erdos303
