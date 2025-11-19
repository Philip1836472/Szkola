document.addEventListener('DOMContentLoaded', () => {
  const gradesEl = document.getElementById('grades');
  const calcBtn = document.getElementById('calcBtn');
  const clearBtn = document.getElementById('clearBtn');
  const output = document.getElementById('output');

  function showError(message) {
    output.innerHTML = `<div class="error">${message}</div>`;
  }

  function showResult(text) {
    output.innerHTML = `<div class="result">${text}</div>`;
  }

  function parseGrades(input) {
    if (!input) return [];
    const parts = input.split(/[,\s;]+/).map(s => s.trim()).filter(s => s.length > 0);
    return parts;
  }

  function validateAndCompute(rawInput) {
    const parts = parseGrades(rawInput);

    if (parts.length === 0) {
      showError('Brak ocen — wprowadź co najmniej jedną ocenę (1–6).');
      return;
    }

    const invalid = [];
    const nums = [];

    parts.forEach((p) => {
      if (!/^-?\d+$/.test(p)) {
        invalid.push(p);
        return;
      }
      const n = Number(p);
      if (!Number.isFinite(n) || !Number.isInteger(n) || n < 1 || n > 6) {
        invalid.push(p);
        return;
      }
      nums.push(n);
    });

    if (invalid.length > 0) {
      showError(`Nieprawidłowe dane: ${invalid.join(', ')}. Wprowadź tylko liczby całkowite w zakresie 1–6.`);
      return;
    }

    const sum = nums.reduce((a, b) => a + b, 0);
    const avg = sum / nums.length;
    showResult(`Średnia ocen: ${avg.toFixed(2)} (na podstawie ${nums.length} podanych ocen)`);
  }

  calcBtn.addEventListener('click', () => {
    validateAndCompute(gradesEl.value);
  });

  clearBtn.addEventListener('click', () => {
    gradesEl.value = '';
    output.innerHTML = '';
  });
});