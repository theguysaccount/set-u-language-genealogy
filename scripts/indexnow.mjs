// Submit the indexable URLs (build/urls.txt) to IndexNow. Never fails a deploy.
//   node scripts/indexnow.mjs build/urls.txt https://base
import { readFileSync } from "node:fs";
const [file, base = process.env.SITE_URL] = process.argv.slice(2);
const key = readFileSync(new URL("../site/indexnow-key.txt", import.meta.url), "utf8").trim();
const urls = readFileSync(file, "utf8").split("\n").map((u) => u.trim()).filter((u) => u.startsWith(base.replace(/\/$/, "") + "/"));
try {
  const res = await fetch("https://api.indexnow.org/indexnow", { method: "POST", headers: { "Content-Type": "application/json; charset=utf-8", "User-Agent": "set-u-language-genealogy/1.0" },
    body: JSON.stringify({ host: new URL(base).host, key, keyLocation: `${base.replace(/\/$/, "")}/${key}.txt`, urlList: urls }) });
  console.log(`IndexNow: HTTP ${res.status} for ${urls.length} URLs`);
} catch (err) {
  console.log(`IndexNow: failed (${err.message})`);
}
