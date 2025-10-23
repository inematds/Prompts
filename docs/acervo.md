# Acervo de Conteúdo

> Versão leve: listagem e pesquisa baseadas no inventário publicado (sem mídias pesadas).

Se o inventário estiver presente, você verá os tópicos aqui. Caso contrário, publique o `docs/data/inventory.json`.

<div id="inventory-app">
  <input id="search" type="search" placeholder="Buscar por título…" style="width:100%;padding:10px;border-radius:8px;border:1px solid #333;margin:8px 0 16px 0;" />
  <div id="stats" style="margin-bottom:8px;color:#9aa4c7"></div>
  <div style="overflow:auto">
    <table id="inv" class="md-typeset" style="width:100%;min-width:720px">
      <thead>
        <tr>
          <th data-k="id">ID</th>
          <th data-k="title">Título</th>
          <th data-k="date">Data</th>
          <th data-k="attachments">Anexos</th>
          <th>Links</th>
        </tr>
      </thead>
      <tbody></tbody>
    </table>
  </div>
</div>

<script>
(async function(){
  const $ = (sel, el=document) => el.querySelector(sel);
  const $$ = (sel, el=document) => Array.from(el.querySelectorAll(sel));
  const app = $('#inventory-app');
  const tbody = $('#inv tbody', app);
  const stats = $('#stats', app);
  const search = $('#search', app);
  let raw;
  try {
    const res = await fetch('data/inventory.json');
    raw = await res.json();
  } catch (e) {
    tbody.innerHTML = '<tr><td colspan="5">Inventário não encontrado. Publique docs/data/inventory.json.</td></tr>';
    return;
  }
  let items = raw.topics || [];
  const fmtDate = s => s ? new Date(s).toISOString().slice(0,10) : '';
  function render(list){
    stats.textContent = `${list.length} tópico(s) — base: ${raw.titulo || ''}`;
    tbody.innerHTML = list.map(t => {
      const att = (t.attachments||[]);
      const contentLink = t.content_path ? `<a href="${t.content_path}">content.txt</a>` : `<a href="data/2494987106/${t.id}/content.txt">content.txt</a>`;
      return `<tr>
        <td>${t.id}</td>
        <td>${(t.title||'').replace(/</g,'&lt;')}</td>
        <td>${fmtDate(t.date)}</td>
        <td>${att.length}</td>
        <td>${contentLink}</td>
      </tr>`;
    }).join('');
  }
  let current = [...items];
  render(current);
  function applyFilter(){
    const q = (search.value || '').toLowerCase().trim();
    current = items.filter(t => (t.title||'').toLowerCase().includes(q) || String(t.id).includes(q));
    render(current);
  }
  search.addEventListener('input', applyFilter);
})();
</script>

