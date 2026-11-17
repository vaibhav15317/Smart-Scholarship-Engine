// Matching runs in SQL on the server (server.py), which reads scholarships.db live.
const form = document.getElementById("matcher-form");
const resultsEl = document.getElementById("results");
const titleEl = document.getElementById("results-title");
const subEl = document.getElementById("results-sub");

const rupeeShort = (n) => {
  if (n >= 100000) {
    const l = n / 100000;
    return "₹" + (Number.isInteger(l) ? l : l.toFixed(1)) + "L";
  }
  return "₹" + n.toLocaleString("en-IN");
};

function getProfile() {
  const marks = parseFloat(document.getElementById("marks").value);
  const income = parseFloat(document.getElementById("income").value);
  return {
    course: document.getElementById("course").value,
    level: document.getElementById("level").value,
    category: document.getElementById("category").value,
    state: document.getElementById("state").value,
    gender: document.getElementById("gender").value,
    disability: document.getElementById("disability").checked,
    minority: document.getElementById("minority").checked,
    marks: Number.isFinite(marks) ? marks : 0,
    income: Number.isFinite(income) ? income : 0,
  };
}

async function fetchMatches(p) {
  const qs = new URLSearchParams({
    course: p.course,
    level: p.level,
    category: p.category,
    state: p.state,
    gender: p.gender,
    marks: p.marks,
    income: p.income,
    disability: p.disability ? "1" : "0",
    minority: p.minority ? "1" : "0",
  });
  const res = await fetch("/api/match?" + qs.toString());
  if (!res.ok) throw new Error("Server returned " + res.status);
  return res.json();
}

function el(tag, className, text) {
  const node = document.createElement(tag);
  if (className) node.className = className;
  if (text !== undefined) node.textContent = text;
  return node;
}

function renderCard(s) {
  const card = el("article", "result");
  card.append(el("h4", "", s.name));
  card.append(el("p", "provider", s.provider));
  card.append(el("p", "amount", s.amountText));
  card.append(el("p", "desc", s.description));

  const tags = el("div", "tags");
  tags.append(el("span", "tag", s.level));
  if (s.state) tags.append(el("span", "tag state", s.state));
  if (s.minMarks > 0) tags.append(el("span", "tag", "Min " + s.minMarks + "% marks"));
  tags.append(el("span", "tag", s.maxIncome === null ? "No income limit" : "Income up to " + rupeeShort(s.maxIncome)));
  if (s.categories.length) tags.append(el("span", "tag", s.categories.join(", ")));
  if (s.gender !== "Any") tags.append(el("span", "tag", s.gender + " students"));
  if (s.requiresDisability) tags.append(el("span", "tag", "Disability 40%+"));
  if (s.requiresMinority) tags.append(el("span", "tag", "Minority"));
  if (s.verification !== "researched") tags.append(el("span", "tag unverified", "Details not recently verified"));
  card.append(tags);

  if (s.meritCriterion) card.append(el("p", "merit", "Merit rule: " + s.meritCriterion));
  card.append(el("p", "deadline", s.deadlineNote));

  const link = el("a", "portal-link", "Open " + s.portalName + " ↗");
  link.href = s.portalUrl;
  link.target = "_blank";
  link.rel = "noopener";
  card.append(link);
  return card;
}

async function render() {
  const profile = getProfile();
  resultsEl.replaceChildren();

  let found;
  try {
    found = (await fetchMatches(profile)).matches;
  } catch (err) {
    titleEl.textContent = "Can't reach the database";
    subEl.textContent = "Start the server with `python server.py`, then open http://localhost:8000 (not the index.html file directly).";
    return;
  }

  if (found.length === 0) {
    titleEl.textContent = "No matches yet";
    subEl.textContent = "Try a different course, state, category or income to see more schemes.";
    resultsEl.append(el("p", "empty", "No scholarships in this database match the profile."));
    return;
  }

  titleEl.textContent =
    found.length + (found.length === 1 ? " scholarship matches" : " scholarships match") + " your profile";
  subEl.textContent = "Sorted by highest yearly amount. Schemes with variable amounts are listed last.";
  found.forEach((s) => resultsEl.append(renderCard(s)));
}

form.addEventListener("submit", (e) => {
  e.preventDefault();
  render();
});

// Mobile nav
const toggle = document.querySelector(".nav-toggle");
const nav = document.getElementById("nav");
toggle.addEventListener("click", () => {
  const open = nav.classList.toggle("open");
  toggle.setAttribute("aria-expanded", String(open));
});
nav.addEventListener("click", (e) => {
  if (e.target.tagName === "A") {
    nav.classList.remove("open");
    toggle.setAttribute("aria-expanded", "false");
  }
});

render();
