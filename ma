<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0,viewport-fit=cover"/>
  <title>Potto - AI旅行プランナー</title>
  <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 36 36'%3E%3Ccircle cx='18' cy='18' r='4.5' fill='%23f9a8d4'/%3E%3Cellipse cx='18' cy='8.5' rx='3.5' ry='5.5' fill='%23f472b6' opacity='.85'/%3E%3Cellipse cx='18' cy='27.5' rx='3.5' ry='5.5' fill='%23c084fc' opacity='.85'/%3E%3Cellipse cx='8.5' cy='18' rx='5.5' ry='3.5' fill='%23f9a8d4' opacity='.85'/%3E%3Cellipse cx='27.5' cy='18' rx='5.5' ry='3.5' fill='%23a78bfa' opacity='.85'/%3E%3Cellipse cx='11' cy='11' rx='3.5' ry='5.5' transform='rotate(-45 11 11)' fill='%23fda4af' opacity='.72'/%3E%3Cellipse cx='25' cy='11' rx='3.5' ry='5.5' transform='rotate(45 25 11)' fill='%23c084fc' opacity='.72'/%3E%3Cellipse cx='11' cy='25' rx='3.5' ry='5.5' transform='rotate(45 11 25)' fill='%23fbcfe8' opacity='.72'/%3E%3Cellipse cx='25' cy='25' rx='3.5' ry='5.5' transform='rotate(-45 25 25)' fill='%23a5b4fc' opacity='.72'/%3E%3Ccircle cx='18' cy='18' r='3.8' fill='%23fff' opacity='.7'/%3E%3Ccircle cx='18' cy='18' r='2' fill='%23f9a8d4'/%3E%3C/svg%3E"/>
  <link rel="apple-touch-icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 36 36'%3E%3Ccircle cx='18' cy='18' r='4.5' fill='%23f9a8d4'/%3E%3Cellipse cx='18' cy='8.5' rx='3.5' ry='5.5' fill='%23f472b6' opacity='.85'/%3E%3Cellipse cx='18' cy='27.5' rx='3.5' ry='5.5' fill='%23c084fc' opacity='.85'/%3E%3Cellipse cx='8.5' cy='18' rx='5.5' ry='3.5' fill='%23f9a8d4' opacity='.85'/%3E%3Cellipse cx='27.5' cy='18' rx='5.5' ry='3.5' fill='%23a78bfa' opacity='.85'/%3E%3Cellipse cx='11' cy='11' rx='3.5' ry='5.5' transform='rotate(-45 11 11)' fill='%23fda4af' opacity='.72'/%3E%3Cellipse cx='25' cy='11' rx='3.5' ry='5.5' transform='rotate(45 25 11)' fill='%23c084fc' opacity='.72'/%3E%3Cellipse cx='11' cy='25' rx='3.5' ry='5.5' transform='rotate(45 11 25)' fill='%23fbcfe8' opacity='.72'/%3E%3Cellipse cx='25' cy='25' rx='3.5' ry='5.5' transform='rotate(-45 25 25)' fill='%23a5b4fc' opacity='.72'/%3E%3Ccircle cx='18' cy='18' r='3.8' fill='%23fff' opacity='.7'/%3E%3Ccircle cx='18' cy='18' r='2' fill='%23f9a8d4'/%3E%3C/svg%3E"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol:wght@400;700&family=Noto+Sans+JP:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    *,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
    :root{
      --pink:#f9a8d4;--pl:#fce7f3;--pm:#f472b6;--pd:#db2777;
      --lav:#c4b5fd;--ll:#ede9fe;--mint:#6ee7b7;--ml:#d1fae5;
      --peach:#fcd34d;--peachl:#fef3c7;--sky:#bae6fd;--skyl:#e0f2fe;
      --bg:#fff8fb;--bg2:#fff;--bg3:#fdf2f8;
      --tx:#4a2c3a;--tx2:#9d7a8a;--bd:#f0d6e8;
      --sh:0 4px 24px rgba(219,39,119,.08);--r:14px;--rs:9px;
      --hh:56px;--th:44px;
    }
    html,body{height:100%;overflow:hidden}
    body{font-family:'Noto Sans JP','Hiragino Kaku Gothic ProN',sans-serif;background:var(--bg);color:var(--tx);display:flex;flex-direction:column}
    header{height:var(--hh);flex-shrink:0;background:linear-gradient(135deg,#fce7f3,#ede9fe 50%,#dbeafe);padding:0 14px;display:flex;align-items:center;justify-content:space-between;box-shadow:0 2px 12px rgba(219,39,119,.10);border-bottom:1px solid var(--bd);z-index:100}
    .hl{display:flex;align-items:center;gap:9px}
    .logo-icon{width:36px;height:36px;flex-shrink:0}
    .lt h1{font-family:'Kaisei Decol',serif;font-size:1.45rem;font-weight:700;background:linear-gradient(135deg,#db2777,#9333ea,#2563eb);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;letter-spacing:2px;line-height:1}
    .lt p{font-size:.58rem;color:var(--tx2);margin-top:2px;letter-spacing:.8px}
    .hr{display:flex;align-items:center;gap:6px}
    .icn-btn{width:36px;height:36px;border-radius:50%;border:1.5px solid var(--bd);background:rgba(255,255,255,.8);display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:1rem;transition:all .2s;flex-shrink:0}
    .icn-btn:hover{background:var(--pl);border-color:var(--pm);transform:rotate(20deg)}
    .icn-btn.ok{border-color:var(--mint);background:var(--ml)}
    .tabs{height:var(--th);flex-shrink:0;display:flex;background:var(--bg2);border-bottom:2px solid var(--bd);overflow:hidden}
    .tab-btn{flex:1;min-width:0;padding:0 1px;background:none;border:none;color:var(--tx2);cursor:pointer;font-size:.55rem;font-weight:700;border-bottom:3px solid transparent;margin-bottom:-2px;transition:all .2s;font-family:inherit;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:1px}
    .tab-btn .ti{font-size:.9rem;line-height:1}
    .tab-btn:hover{color:var(--pd);background:var(--pl)}
    .tab-btn.active{color:var(--pd);border-bottom-color:var(--pm);background:var(--pl)}
    .cbg{background:linear-gradient(135deg,var(--pm),var(--lav));color:#fff;border-radius:10px;padding:0 4px;font-size:.52rem;font-weight:700;line-height:1.4}
    .pw{flex:1;overflow:hidden;position:relative}
    .panel{display:none;height:100%;overflow-y:auto;overflow-x:hidden;padding:12px 12px 80px;-webkit-overflow-scrolling:touch}
    .panel.active{display:block}
    .card{background:var(--bg2);border:1.5px solid var(--bd);border-radius:var(--r);padding:14px;margin-bottom:10px;box-shadow:0 2px 8px rgba(219,39,119,.04)}
    .ct{font-size:.83rem;font-weight:700;margin-bottom:11px;color:var(--pd);display:flex;align-items:center;gap:6px}
    .ct::before{content:'';display:inline-block;width:3px;height:13px;background:linear-gradient(180deg,var(--pm),var(--lav));border-radius:2px;flex-shrink:0}
    input[type=text],input[type=password],textarea,select{width:100%;background:var(--bg3);border:1.5px solid var(--bd);border-radius:var(--rs);color:var(--tx);padding:8px 11px;font-size:.8rem;outline:none;transition:border-color .2s,box-shadow .2s;font-family:inherit;-webkit-appearance:none}
    input:focus,textarea:focus,select:focus{border-color:var(--pm);box-shadow:0 0 0 3px rgba(244,114,182,.12)}
    textarea{resize:vertical;min-height:68px}
    label{display:block;font-size:.7rem;color:var(--tx2);margin-bottom:4px;font-weight:700}
    .fg{margin-bottom:10px}
    .btn{display:inline-flex;align-items:center;justify-content:center;gap:5px;padding:9px 16px;border-radius:22px;border:none;font-size:.8rem;font-weight:700;cursor:pointer;transition:all .2s;font-family:inherit}
    .bp{background:linear-gradient(135deg,#f472b6,#c084fc);color:#fff;box-shadow:0 4px 12px rgba(244,114,182,.30)}
    .bp:hover{transform:translateY(-2px);box-shadow:0 6px 18px rgba(244,114,182,.40)}
    .bs{background:linear-gradient(135deg,#34d399,#059669);color:#fff;box-shadow:0 4px 12px rgba(52,211,153,.25)}
    .ba{background:linear-gradient(135deg,#fbbf24,#f59e0b);color:#fff}
    .bd2{background:linear-gradient(135deg,#f87171,#ef4444);color:#fff}
    .bo{background:var(--bg2);border:1.5px solid var(--bd);color:var(--tx2)}
    .bo:hover{border-color:var(--pm);color:var(--pd);background:var(--pl)}
    .btn:disabled{opacity:.5;cursor:not-allowed;transform:none!important;box-shadow:none!important}
    .bsm{padding:5px 11px;font-size:.72rem;border-radius:14px}
    .bfw{width:100%}
    .cg{display:grid;grid-template-columns:1fr 1fr;gap:9px;margin-bottom:10px}
    .cb{position:relative;display:flex;flex-direction:column;align-items:center;justify-content:center;gap:7px;padding:18px 6px;background:linear-gradient(135deg,var(--pl),var(--ll));border:2px dashed var(--pink);border-radius:var(--r);cursor:pointer;transition:all .2s;color:var(--pd);min-height:88px}
    .cb:hover{border-color:var(--pm);transform:translateY(-2px);box-shadow:var(--sh)}
    .cb input[type=file]{position:absolute;inset:0;opacity:0;cursor:pointer;width:100%;height:100%}
    .ci{font-size:1.7rem;line-height:1}.cl{font-size:.76rem;font-weight:700}.cs2{font-size:.62rem;color:var(--tx2);text-align:center;line-height:1.3}
    .pvbox{background:var(--bg3);border:1.5px solid var(--bd);border-radius:var(--r);padding:10px;display:none;margin-bottom:10px}
    .pv-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(80px,1fr));gap:8px;margin-bottom:8px}
    .pv-item{position:relative;border-radius:var(--rs);overflow:hidden;aspect-ratio:1;background:var(--pl)}
    .pv-item img{width:100%;height:100%;object-fit:cover}
    .pv-badge{position:absolute;bottom:3px;left:3px;background:rgba(219,39,119,.85);color:#fff;font-size:.55rem;font-weight:700;border-radius:6px;padding:1px 5px;line-height:1.4}
    .pv-done{position:absolute;top:3px;right:3px;background:rgba(52,211,153,.9);color:#fff;font-size:.65rem;font-weight:700;border-radius:50%;width:18px;height:18px;display:none;align-items:center;justify-content:center}
    .pv-err{position:absolute;top:3px;right:3px;background:rgba(239,68,68,.9);color:#fff;font-size:.55rem;font-weight:700;border-radius:6px;padding:1px 4px;display:none}
    .pvinfo{font-size:.7rem;color:var(--tx2);text-align:center}
    .batch-progress{background:var(--pl);border:1.5px solid var(--pink);border-radius:var(--rs);padding:9px 12px;margin-bottom:8px;display:none}
    .bp-bar-wrap{background:var(--bd);border-radius:4px;height:6px;margin-top:6px;overflow:hidden}
    .bp-bar{height:100%;background:linear-gradient(90deg,var(--pm),var(--lav));border-radius:4px;transition:width .3s ease;width:0%}
    .bp-text{font-size:.72rem;color:var(--pd);font-weight:700}
    /* SPOT GRID */
    .sg{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:10px}
    .sc{background:var(--bg2);border:1.5px solid var(--bd);border-radius:var(--r);overflow:hidden;cursor:pointer;transition:transform .2s,box-shadow .2s}
    .sc:hover{transform:translateY(-3px);box-shadow:0 6px 18px rgba(219,39,119,.12)}
    .sci{width:100%;height:100px;object-fit:cover}
    .sct{width:100%;height:100px;display:flex;align-items:center;justify-content:center;font-size:2rem;background:linear-gradient(135deg,var(--pl),var(--ll));position:relative}
    /* サムネイル画像検索ボタン */
    .img-search-btn{position:absolute;bottom:4px;right:4px;background:rgba(244,114,182,.85);color:#fff;border:none;border-radius:8px;padding:2px 6px;font-size:.58rem;font-weight:700;cursor:pointer;font-family:inherit}
    .scb{padding:8px 9px}
    .scn{font-weight:700;font-size:.78rem;margin-bottom:2px}
    .sca{font-size:.65rem;color:var(--pm);font-weight:600;margin-bottom:5px}
    .sctags{display:flex;flex-wrap:wrap;gap:3px}
    .tag{background:var(--pl);color:var(--pd);border-radius:20px;padding:1px 7px;font-size:.62rem;font-weight:600}
    .tag.m{background:var(--ml);color:#065f46}.tag.l{background:var(--ll);color:#5b21b6}
    .scf{padding:7px 9px;border-top:1px solid var(--bd);display:flex;justify-content:space-between;align-items:center;background:var(--bg3)}
    .sr{color:#f59e0b;font-size:.74rem}
    /* エリア選択UI */
    .area-ui{display:flex;flex-direction:column;gap:8px;margin-bottom:10px}
    .area-row{display:flex;gap:6px;align-items:center;flex-wrap:wrap}
    .area-keyword-wrap{position:relative}
    .area-suggest{position:absolute;top:100%;left:0;right:0;background:var(--bg2);border:1.5px solid var(--pm);border-radius:0 0 var(--rs) var(--rs);z-index:50;max-height:180px;overflow-y:auto;display:none}
    .area-suggest.show{display:block}
    .sug-item{padding:7px 12px;font-size:.78rem;cursor:pointer;border-bottom:1px solid var(--bd);transition:background .15s}
    .sug-item:hover{background:var(--pl);color:var(--pd)}
    .area-chips-wrap{display:flex;flex-wrap:wrap;gap:5px;min-height:24px}
    .area-chip{background:linear-gradient(135deg,var(--pl),var(--ll));border:1.5px solid var(--pm);border-radius:20px;padding:4px 10px;font-size:.74rem;font-weight:700;color:var(--pd);display:flex;align-items:center;gap:4px}
    .area-chip button{background:none;border:none;cursor:pointer;color:var(--pd);font-size:.7rem;line-height:1;padding:0 1px;font-weight:700}
    .g2{display:grid;grid-template-columns:1fr 1fr;gap:9px}
    .g2c{grid-column:1/-1}
    /* NEARBY */
    .ng{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:9px;margin-top:10px}
    .nc{background:var(--bg2);border:1.5px solid var(--bd);border-radius:var(--r);padding:11px;transition:all .2s}
    .nc:hover{border-color:var(--pm);transform:translateY(-2px)}
    .nn{font-weight:700;margin-bottom:3px;font-size:.82rem}.nt{font-size:.66rem;color:var(--pm);margin-bottom:5px;font-weight:600}.nd{font-size:.72rem;color:var(--tx2);line-height:1.5}
    .ai-section{background:linear-gradient(135deg,var(--ll),var(--skyl));border:1.5px solid var(--lav);border-radius:var(--r);padding:12px;margin-top:10px}
    .ai-section-title{font-size:.8rem;font-weight:700;color:#5b21b6;margin-bottom:10px;display:flex;align-items:center;gap:6px}
    /* MODALS */
    .mo{position:fixed;inset:0;background:rgba(74,44,58,.4);backdrop-filter:blur(4px);z-index:200;display:none;align-items:flex-end;justify-content:center;padding:0}
    .mo.open{display:flex}
    .mbox{background:var(--bg2);border:1.5px solid var(--bd);border-radius:20px 20px 0 0;padding:22px 18px 36px;width:100%;max-width:540px;box-shadow:0 -8px 40px rgba(219,39,119,.15);max-height:92vh;overflow-y:auto}
    .mbox h3{font-size:.95rem;margin-bottom:14px;color:var(--pd);font-weight:800}
    .mf{display:flex;justify-content:flex-end;gap:8px;margin-top:14px}
    .ibox{background:linear-gradient(135deg,var(--pl),var(--ll));border:1px solid var(--pink);border-radius:var(--rs);padding:10px 12px;font-size:.72rem;color:var(--tx2);line-height:1.7}
    /* PLAN POPUP */
    .plan-modal{position:fixed;inset:0;background:rgba(74,44,58,.5);backdrop-filter:blur(6px);z-index:300;display:none;align-items:flex-start;justify-content:center;padding:0;overflow-y:auto}
    .plan-modal.open{display:flex}
    .plan-box{background:var(--bg2);border-radius:20px 20px 0 0;width:100%;max-width:600px;margin-top:36px;min-height:calc(100vh - 36px);display:flex;flex-direction:column}
    .plan-hd{background:linear-gradient(135deg,#fce7f3,#ede9fe);padding:16px 16px 12px;border-radius:20px 20px 0 0;position:sticky;top:0;z-index:10;border-bottom:1px solid var(--bd)}
    .plan-hd h2{font-family:'Kaisei Decol',serif;font-size:1.1rem;color:var(--pd);margin-bottom:3px}
    .plan-hd p{font-size:.7rem;color:var(--tx2)}
    .plan-close{position:absolute;top:12px;right:12px;width:28px;height:28px;border-radius:50%;background:rgba(255,255,255,.8);border:1.5px solid var(--bd);display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:.85rem}
    .plan-body{padding:14px;flex:1}
    .plan-ft{padding:12px 14px;border-top:1px solid var(--bd);background:var(--bg2);position:sticky;bottom:0}
    .day-block{margin-bottom:18px}
    .day-title{font-family:'Kaisei Decol',serif;font-size:.9rem;font-weight:700;color:var(--pd);margin-bottom:10px;padding:7px 13px;background:linear-gradient(135deg,var(--pl),var(--ll));border-radius:10px;border-left:4px solid var(--pm)}
    .tl{position:relative;padding-left:44px}
    .tl::before{content:'';position:absolute;left:17px;top:0;bottom:0;width:2px;background:linear-gradient(180deg,var(--pink),var(--lav));border-radius:1px}
    .tl-item{position:relative;margin-bottom:12px}
    .tl-dot{position:absolute;left:-33px;top:2px;width:13px;height:13px;border-radius:50%;background:linear-gradient(135deg,var(--pm),var(--lav));border:2px solid #fff;box-shadow:0 0 0 2px var(--pink)}
    .tl-time{font-size:.66rem;font-weight:700;color:var(--pm);margin-bottom:2px}
    .tl-card{background:var(--bg3);border:1px solid var(--bd);border-radius:10px;padding:9px;transition:border-color .2s}
    .tl-card:hover{border-color:var(--pm)}
    .tl-name{font-weight:700;font-size:.8rem;margin-bottom:3px;display:flex;align-items:center;gap:5px;flex-wrap:wrap}
    .tl-img{width:100%;height:75px;object-fit:cover;border-radius:7px;margin-bottom:6px}
    .tl-desc{font-size:.72rem;color:var(--tx2);line-height:1.6;outline:none;border-radius:6px;padding:3px}
    .tl-desc:focus{background:var(--pl);border:1px solid var(--pm)}
    .tl-type{font-size:.62rem;font-weight:700;padding:2px 7px;border-radius:10px;flex-shrink:0}
    .tt-meal{background:var(--peachl);color:#92400e}.tt-move{background:var(--skyl);color:#0369a1}
    .tt-spot{background:var(--pl);color:var(--pd)}.tt-stay{background:var(--ll);color:#5b21b6}
    .tt-note{background:var(--ml);color:#065f46}
    .edit-hint{font-size:.66rem;color:var(--tx2);text-align:center;padding:5px;background:var(--peachl);border-radius:8px;margin-bottom:9px}
    .share-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:7px;margin-bottom:9px}
    .share-btn{display:flex;flex-direction:column;align-items:center;gap:3px;padding:9px 3px;border-radius:12px;border:1.5px solid var(--bd);background:var(--bg3);cursor:pointer;transition:all .2s;font-family:inherit}
    .share-btn:hover{border-color:var(--pm);background:var(--pl);transform:translateY(-2px)}
    .share-btn .si{font-size:1.3rem}.share-btn .sl{font-size:.58rem;font-weight:700;color:var(--tx2)}
    .spot-detail-img{width:100%;height:180px;object-fit:cover}
    .spot-detail-thumb{width:100%;height:120px;display:flex;align-items:center;justify-content:center;font-size:3rem;background:linear-gradient(135deg,var(--pl),var(--ll))}
    .spot-detail-body{padding:16px}
    .gmap-btn{display:flex;align-items:center;justify-content:center;gap:6px;width:100%;padding:10px;background:linear-gradient(135deg,#4285f4,#0f9d58);color:#fff;border-radius:12px;border:none;font-weight:700;font-size:.8rem;cursor:pointer;font-family:inherit;margin-top:9px}
    /* 保存済みプランカード */
    .plan-card{background:var(--bg2);border:1.5px solid var(--bd);border-radius:var(--r);padding:14px;margin-bottom:10px;cursor:pointer;transition:all .2s}
    .plan-card:hover{border-color:var(--pm);transform:translateY(-2px);box-shadow:var(--sh)}
    .plan-card-title{font-family:'Kaisei Decol',serif;font-size:.95rem;font-weight:700;color:var(--pd);margin-bottom:4px}
    .plan-card-sub{font-size:.72rem;color:var(--tx2);margin-bottom:8px}
    .plan-card-meta{display:flex;flex-wrap:wrap;gap:5px;margin-bottom:8px}
    .plan-meta-tag{background:var(--pl);color:var(--pd);border-radius:20px;padding:2px 8px;font-size:.64rem;font-weight:700}
    .tc{position:fixed;bottom:14px;left:50%;transform:translateX(-50%);z-index:999;display:flex;flex-direction:column;gap:6px;align-items:center;pointer-events:none}
    .toast{background:var(--bg2);border:1.5px solid var(--bd);border-radius:20px;padding:8px 16px;font-size:.76rem;box-shadow:0 4px 16px rgba(219,39,119,.14);animation:sup .3s ease;font-weight:600;color:var(--tx);white-space:nowrap}
    .toast.success{border-color:var(--mint);background:var(--ml);color:#065f46}
    .toast.error{border-color:#f87171;background:#fff1f2;color:#be123c}
    .toast.info{border-color:var(--lav)}
    @keyframes sup{from{transform:translateY(16px);opacity:0}to{transform:translateY(0);opacity:1}}
    .spinner{width:15px;height:15px;flex-shrink:0;border:2.5px solid rgba(255,255,255,.3);border-top-color:#fff;border-radius:50%;animation:sp .7s linear infinite;display:inline-block}
    .spinner.dark{border-color:rgba(219,39,119,.2);border-top-color:var(--pm)}
    @keyframes sp{to{transform:rotate(360deg)}}
    .flex{display:flex}.gap2{gap:8px}.mt2{margin-top:8px}.mt3{margin-top:12px}
    .txm{color:var(--tx2);font-size:.74rem}
    .empty{text-align:center;padding:36px 16px;color:var(--tx2)}
    .empty .ei{font-size:2.4rem;margin-bottom:8px}
    .ed{background:#fff1f2;border:1px solid #fecdd3;border-radius:8px;padding:9px 11px;font-size:.74rem;color:#be123c;white-space:pre-wrap;word-break:break-all;margin-top:7px}
    ::-webkit-scrollbar{width:4px}::-webkit-scrollbar-thumb{background:var(--pink);border-radius:2px}::-webkit-scrollbar-track{background:transparent}
    @media(min-width:500px){.sg,.ng{grid-template-columns:repeat(auto-fill,minmax(170px,1fr))}}
  </style>
</head>
<body>

<header>
  <div class="hl">
    <svg class="logo-icon" viewBox="0 0 36 36" fill="none">
      <circle cx="18" cy="18" r="4.5" fill="#f9a8d4"/>
      <ellipse cx="18" cy="8.5" rx="3.5" ry="5.5" fill="#f472b6" opacity=".85"/>
      <ellipse cx="18" cy="27.5" rx="3.5" ry="5.5" fill="#c084fc" opacity=".85"/>
      <ellipse cx="8.5" cy="18" rx="5.5" ry="3.5" fill="#f9a8d4" opacity=".85"/>
      <ellipse cx="27.5" cy="18" rx="5.5" ry="3.5" fill="#a78bfa" opacity=".85"/>
      <ellipse cx="11" cy="11" rx="3.5" ry="5.5" transform="rotate(-45 11 11)" fill="#fda4af" opacity=".72"/>
      <ellipse cx="25" cy="11" rx="3.5" ry="5.5" transform="rotate(45 25 11)" fill="#c084fc" opacity=".72"/>
      <ellipse cx="11" cy="25" rx="3.5" ry="5.5" transform="rotate(45 11 25)" fill="#fbcfe8" opacity=".72"/>
      <ellipse cx="25" cy="25" rx="3.5" ry="5.5" transform="rotate(-45 25 25)" fill="#a5b4fc" opacity=".72"/>
      <circle cx="18" cy="18" r="3.8" fill="#fff" opacity=".7"/>
      <circle cx="18" cy="18" r="2" fill="#f9a8d4"/>
    </svg>
    <div class="lt"><h1>Potto</h1><p>AI旅行プランナー ✈️</p></div>
  </div>
  <div class="hr">
    <button class="icn-btn" id="settingsBtn" onclick="openSettings()" title="設定">⚙️</button>
  </div>
</header>

<div class="tabs">
  <button class="tab-btn active" onclick="switchTab(this,'analyze')"><span class="ti">🌸</span><span>追加</span></button>
  <button class="tab-btn" onclick="switchTab(this,'spots')"><span class="ti">💗</span><span>一覧 <span id="spotCount" class="cbg">0</span></span></button>
  <button class="tab-btn" onclick="switchTab(this,'plan')"><span class="ti">🗺️</span><span>プラン</span></button>
  <button class="tab-btn" onclick="switchTab(this,'saved')"><span class="ti">📋</span><span>保存済み <span id="planCount" class="cbg">0</span></span></button>
  <button class="tab-btn" onclick="switchTab(this,'nearby')"><span class="ti">📍</span><span>周辺</span></button>
</div>

<div class="pw">

  <!-- ANALYZE -->
  <div id="panel-analyze" class="panel active">
    <div class="card">
      <div class="ct">📸 画像からスポット解析</div>
      <div class="cg">
        <div class="cb">
          <input type="file" id="camIn" accept="image/*" capture="environment" onchange="handleImg(event,'cam')">
          <div class="ci">📷</div><div class="cl">カメラ撮影</div><div class="cs2">その場でパシャっと</div>
        </div>
        <div class="cb">
          <input type="file" id="galIn" accept="image/*" multiple onchange="handleImg(event,'gal')">
          <div class="ci">🖼️</div><div class="cl">画像を選択</div><div class="cs2">複数まとめて選択OK</div>
        </div>
      </div>
      <div class="pvbox" id="pvbox">
        <div class="pv-grid" id="pvGrid"></div>
        <div class="pvinfo" id="pvinfo"></div>
      </div>
      <div class="batch-progress" id="batchProgress">
        <div class="bp-text" id="bpText">解析中...</div>
        <div class="bp-bar-wrap"><div class="bp-bar" id="bpBar"></div></div>
      </div>
      <div class="flex gap2">
        <button class="btn bp" id="anaBtn" onclick="analyzeImages()" disabled style="flex:1">🔍 AIで解析する</button>
        <button class="btn bo bsm" id="clrBtn" onclick="clearImg()" style="display:none">✕</button>
      </div>
    </div>
    <div class="card">
      <div class="ct">✍️ テキストから解析</div>
      <div class="fg"><label>インスタキャプションや説明文をペースト</label>
        <textarea id="capIn" placeholder="例: 京都の嵐山、竹林の小径🌿 静かな朝に最高！ #京都 #嵐山"></textarea>
      </div>
      <button class="btn bp bfw" id="capBtn" onclick="analyzeCap()">🤖 解析する</button>
    </div>
    <div id="anaResult" style="display:none">
      <div class="card" style="border-color:var(--mint)">
        <div class="ct" style="color:#065f46">✅ 解析・保存完了</div>
        <div id="resPrev"></div>
        <div class="mt2 flex gap2" style="flex-wrap:wrap">
          <button class="btn bo bsm" onclick="openEditModal(null)">✏️ 内容を修正</button>
          <button class="btn bo bsm" onclick="document.getElementById('anaResult').style.display='none'">✕</button>
        </div>
      </div>
    </div>
  </div>

  <!-- SPOTS -->
  <div id="panel-spots" class="panel">
    <div style="display:flex;align-items:center;gap:7px;margin-bottom:10px;flex-wrap:wrap">
      <input type="text" id="srchSpot" placeholder="🔍 スポット名・エリア" style="flex:1;min-width:100px" oninput="renderSpots()"/>
      <select id="filtArea" onchange="renderSpots()" style="width:100px;flex-shrink:0"><option value="">全エリア</option></select>
      <button class="btn bd2 bsm" style="flex-shrink:0" onclick="confirmClearAll()">🗑️ 全削除</button>
    </div>
    <div id="spotGrid" class="sg"></div>
  </div>

  <!-- PLAN -->
  <div id="panel-plan" class="panel">
    <div class="card">
      <div class="ct">🏙️ 旅行条件を設定</div>
      <div class="fg">
        <label>旅行エリア（都道府県選択またはキーワード入力）</label>
        <div class="area-ui">
          <div class="area-row">
            <select id="prefSelect" style="flex:1" onchange="addAreaFromPref()">
              <option value="">都道府県から選択…</option>
            </select>
          </div>
          <div class="area-keyword-wrap" style="flex:1">
            <input type="text" id="areaKeyword" placeholder="地名を自由入力（例：嵐山、箱根、富良野）" oninput="showAreaSuggest()" onkeydown="onAreaKeydown(event)" autocomplete="off"/>
            <div class="area-suggest" id="areaSuggest"></div>
          </div>
          <div class="area-chips-wrap" id="selectedAreaChips">
            <span class="txm" id="noAreaMsg">エリアを選択または入力してください</span>
          </div>
        </div>
      </div>
      <div class="g2">
        <div class="fg"><label>旅行日数</label>
          <select id="planDays"><option>日帰り</option><option>1泊2日</option><option selected>2泊3日</option><option>3泊4日</option><option>1週間</option></select>
        </div>
        <div class="fg"><label>旅行スタイル</label>
          <select id="planStyle"><option>グルメ重視</option><option>観光・文化</option><option>自然・アクティビティ</option><option>ショッピング</option><option>のんびり</option><option>バランス型</option></select>
        </div>
        <div class="fg"><label>旅行者</label>
          <select id="planType"><option>カップル</option><option>女性ひとり旅</option><option>男性ひとり旅</option><option>女子旅</option><option>男子旅</option><option>ファミリー（子連れ）</option><option>シニア</option><option>グループ</option></select>
        </div>
        <div class="fg"><label>現地までの移動</label>
          <select id="travelTo"><option value="車" selected>車</option><option>新幹線</option><option>飛行機</option><option>電車</option><option>バス</option><option>フェリー</option></select>
        </div>
        <div class="fg"><label>現地での移動</label>
          <select id="travelLocal"><option value="車" selected>車</option><option>レンタカー</option><option>電車・バス</option><option>徒歩中心</option><option>自転車</option><option>タクシー</option></select>
        </div>
        <div class="fg"><label>追加リクエスト</label>
          <input type="text" id="planReq" placeholder="例：予算1人3万以内"/>
        </div>
      </div>
      <button class="btn ba bfw" onclick="generatePlan()" id="planBtn">✨ AIプラン生成</button>
    </div>
  </div>

  <!-- SAVED PLANS -->
  <div id="panel-saved" class="panel">
    <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:10px">
      <div style="font-size:.8rem;font-weight:700;color:var(--pd)">💾 保存済みプラン</div>
      <button class="btn bd2 bsm" onclick="confirmClearPlans()">🗑️ 全削除</button>
    </div>
    <div id="savedPlanList"></div>
  </div>

  <!-- NEARBY -->
  <div id="panel-nearby" class="panel">
    <div class="card">
      <div class="ct">📡 周辺おすすめ検索</div>
      <div class="g2">
        <div class="fg"><label>カテゴリ</label>
          <select id="nbCat"><option>グルメ・レストラン</option><option>観光スポット・名所</option><option>カフェ・スイーツ</option><option>自然・公園</option><option>ショッピング</option><option>温泉・スパ</option><option>アクティビティ</option><option>ホテル・宿泊</option></select>
        </div>
        <div class="fg"><label>検索範囲</label>
          <select id="nbRad"><option>500m以内</option><option selected>1km以内</option><option>3km以内</option><option>5km以内</option><option>10km以内</option></select>
        </div>
      </div>
      <div class="fg"><label>こだわり条件</label><input type="text" id="nbKw" placeholder="例：インスタ映え、穴場スポット"/></div>
      <div class="flex gap2">
        <button class="btn bp" style="flex:1" onclick="searchNearby()" id="nbBtn">📍 現在地で検索</button>
        <button class="btn bo bsm" onclick="searchNearbyManual()">🏙️ 手入力</button>
      </div>
      <div id="locInfo" class="mt2 txm"></div>
    </div>
    <div id="nbResults"></div>
  </div>

</div>

<!-- 全スポット削除確認 -->
<div class="mo" id="confirmModal" onclick="if(event.target===this)closeConfirm()">
  <div class="mbox" style="max-width:380px">
    <h3 id="confirmTitle">🗑️ 削除の確認</h3>
    <p id="confirmMsg" style="font-size:.82rem;color:var(--tx2);line-height:1.7;margin-bottom:14px"></p>
    <div style="background:#fff1f2;border:1px solid #fecdd3;border-radius:var(--rs);padding:10px 12px;font-size:.76rem;color:#be123c;margin-bottom:14px;font-weight:700">
      ⚠️ 削除する前にエクスポートでバックアップをとることをお勧めします
    </div>
    <div class="mf">
      <button class="btn bo bsm" onclick="closeConfirm()">キャンセル</button>
      <button class="btn bd2 bsm" onclick="executeConfirm()">削除する</button>
    </div>
  </div>
</div>

<!-- SETTINGS -->
<div class="mo" id="settingsModal" onclick="if(event.target===this)closeSettings()">
  <div class="mbox">
    <h3>⚙️ 設定</h3>
    <div style="font-size:.78rem;font-weight:700;color:var(--pd);margin-bottom:8px;padding-bottom:6px;border-bottom:1px solid var(--bd)">🤖 Gemini API</div>
    <div class="fg"><label>API Key &nbsp;<a href="https://aistudio.google.com/app/apikey" target="_blank" style="color:var(--pm);font-size:.7rem">無料で取得 →</a></label>
      <input type="password" id="keyIn" placeholder="AIza..."/>
    </div>
    <div class="fg"><label>モデル</label>
      <select id="modelIn">
        <option value="gemini-2.5-flash">gemini-2.5-flash（最新・推奨）</option>
        <option value="gemini-2.5-pro">gemini-2.5-pro（高精度）</option>
        <option value="gemini-1.5-flash">gemini-1.5-flash（旧安定版）</option>
      </select>
    </div>
    <div style="font-size:.78rem;font-weight:700;color:var(--pd);margin:14px 0 8px;padding-bottom:6px;border-bottom:1px solid var(--bd)">💾 データ管理</div>
    <div class="ibox" style="margin-bottom:10px;font-size:.7rem">
      データはブラウザのIndexedDBに保存されます（スマホSafari・Chromeでも動作）。ブラウザのデータ削除やプライベートモードでは消える場合があります。定期的にエクスポートしてください。
    </div>
    <div class="g2" style="margin-bottom:8px">
      <button class="btn bs bsm" onclick="exportData()">⬇️ エクスポート</button>
      <button class="btn bo bsm" onclick="document.getElementById('importFile').click()">⬆️ インポート</button>
    </div>
    <input type="file" id="importFile" accept=".json" style="display:none" onchange="importData(event)"/>
    <div class="ibox" style="font-size:.68rem">🔒 APIキー・データはすべてこのデバイスのみに保存。外部送信なし。</div>
    <div class="mf">
      <button class="btn bo bsm" onclick="closeSettings()">閉じる</button>
      <button class="btn bp" onclick="saveSettings()">💾 保存</button>
    </div>
  </div>
</div>

<!-- SPOT EDIT -->
<div class="mo" id="editModal" onclick="if(event.target===this)closeEditModal()">
  <div class="mbox">
    <h3>✏️ スポット情報を編集</h3>
    <div class="g2">
      <div class="fg"><label>スポット名</label><input type="text" id="ef-name"/></div>
      <div class="fg"><label>エリア</label><input type="text" id="ef-area"/></div>
      <div class="fg"><label>都道府県</label><input type="text" id="ef-pref"/></div>
      <div class="fg"><label>カテゴリ</label>
        <select id="ef-cat"><option>グルメ</option><option>観光</option><option>カフェ</option><option>自然</option><option>ショッピング</option><option>宿泊</option><option>アクティビティ</option><option>その他</option></select>
      </div>
      <div class="fg g2c"><label>タグ（カンマ区切り）</label><input type="text" id="ef-tags"/></div>
      <div class="fg g2c"><label>説明</label><textarea id="ef-desc"></textarea></div>
      <div class="fg"><label>見どころ</label><input type="text" id="ef-hl"/></div>
      <div class="fg"><label>おすすめ時期</label><input type="text" id="ef-bt"/></div>
      <div class="fg"><label>評価(1〜5)</label><input type="text" id="ef-rating"/></div>
    </div>
    <div class="mf">
      <button class="btn bo bsm" onclick="closeEditModal()">キャンセル</button>
      <button class="btn bp" onclick="saveEditModal()">💾 更新</button>
    </div>
  </div>
</div>

<!-- SPOT DETAIL -->
<div class="mo" id="spotModal" onclick="if(event.target===this)closeSpotModal()">
  <div class="mbox" id="spotModalContent" style="padding:0;overflow:hidden"></div>
</div>

<!-- PLAN POPUP -->
<div class="plan-modal" id="planModal">
  <div class="plan-box">
    <div class="plan-hd">
      <button class="plan-close" onclick="closePlanModal()">✕</button>
      <h2 id="planTitle">旅行プラン</h2>
      <p id="planSub"></p>
    </div>
    <div class="plan-body" id="planBody">
      <div class="edit-hint">✏️ 各カードのテキストをタップすると編集できます</div>
      <div id="planTL"></div>
    </div>
    <div class="plan-ft">
      <div class="share-grid">
        <button class="share-btn" onclick="sharePlan('native')"><span class="si">📤</span><span class="sl">共有</span></button>
        <button class="share-btn" onclick="sharePlan('line')"><span class="si">💬</span><span class="sl">LINE</span></button>
        <button class="share-btn" onclick="sharePlan('gmail')"><span class="si">📧</span><span class="sl">Gmail</span></button>
        <button class="share-btn" onclick="sharePlan('copy')"><span class="si">📋</span><span class="sl">コピー</span></button>
      </div>
      <button class="btn bd2 bfw bsm" onclick="closePlanModal()">閉じる</button>
    </div>
  </div>
</div>

<div class="tc" id="tc"></div>

<script>
// ============================================================
//  定数・マスタ
// ============================================================
const PREFS=['北海道','青森県','岩手県','宮城県','秋田県','山形県','福島県','茨城県','栃木県','群馬県','埼玉県','千葉県','東京都','神奈川県','新潟県','富山県','石川県','福井県','山梨県','長野県','岐阜県','静岡県','愛知県','三重県','滋賀県','京都府','大阪府','兵庫県','奈良県','和歌山県','鳥取県','島根県','岡山県','広島県','山口県','徳島県','香川県','愛媛県','高知県','福岡県','佐賀県','長崎県','熊本県','大分県','宮崎県','鹿児島県','沖縄県'];
const AREA_SUGGESTIONS=['札幌','函館','小樽','旭川','富良野','知床','仙台','松島','会津','日光','那須','草津','銀座','渋谷','新宿','浅草','お台場','横浜','鎌倉','箱根','熱海','伊豆','軽井沢','上高地','白川郷','金沢','輪島','富士山','富士五湖','名古屋','伊勢','志摩','京都','嵐山','清水寺','祇園','大阪','難波','梅田','道頓堀','神戸','有馬温泉','奈良','吉野','姫路','倉敷','宮島','広島','松山','道後温泉','高知','桂浜','福岡','博多','太宰府','長崎','阿蘇','由布院','別府','黒川温泉','宮崎','鹿児島','屋久島','奄美大島','那覇','沖縄本島','宮古島','石垣島','久米島','尾道','萩','津和野','直島','小豆島'];
const CE={グルメ:'🍜',観光:'🏯',カフェ:'☕',自然:'🌿',ショッピング:'🛍️',宿泊:'🏨',アクティビティ:'🎯',その他:'📍'};
const TI={spot:{cls:'tt-spot',label:'スポット'},move:{cls:'tt-move',label:'移動'},meal:{cls:'tt-meal',label:'食事'},stay:{cls:'tt-stay',label:'宿泊'},note:{cls:'tt-note',label:'アドバイス'}};

// ============================================================
//  STATE
// ============================================================
let cfg={key:'',model:'gemini-2.5-flash'};
let pendingImages=[];
let lastSpot=null, editingSpotId=null;
let selectedAreas=[];
let confirmCallback=null;
let currentPlanData=null; // 現在表示中のプランデータ

// ============================================================
//  SETTINGS
// ============================================================
const CFG_KEY='potto_cfg_v3';
function loadCfg(){try{const r=localStorage.getItem(CFG_KEY);if(r)cfg={...cfg,...JSON.parse(r)}}catch(e){}updateBadge()}
function saveSettings(){cfg.key=document.getElementById('keyIn').value.trim();cfg.model=document.getElementById('modelIn').value;localStorage.setItem(CFG_KEY,JSON.stringify(cfg));closeSettings();updateBadge();toast('✅ 設定を保存しました','success')}
function updateBadge(){document.getElementById('settingsBtn').classList.toggle('ok',!!cfg.key)}
function openSettings(){document.getElementById('keyIn').value=cfg.key;document.getElementById('modelIn').value=cfg.model;document.getElementById('settingsModal').classList.add('open')}
function closeSettings(){document.getElementById('settingsModal').classList.remove('open')}

// ============================================================
//  確認モーダル（汎用）
// ============================================================
function showConfirm(title, msg, cb){
  document.getElementById('confirmTitle').textContent=title;
  document.getElementById('confirmMsg').textContent=msg;
  confirmCallback=cb;
  document.getElementById('confirmModal').classList.add('open');
}
function closeConfirm(){document.getElementById('confirmModal').classList.remove('open');confirmCallback=null}
function executeConfirm(){closeConfirm();if(confirmCallback)confirmCallback()}
function confirmClearAll(){showConfirm('🗑️ 全スポットを削除','保存されているスポットをすべて削除します。この操作は取り消せません。本当に削除しますか？',executeDeleteAll)}
function confirmClearPlans(){showConfirm('🗑️ 全プランを削除','保存されているプランをすべて削除します。この操作は取り消せません。本当に削除しますか？',executeDeleteAllPlans)}
async function executeDeleteAll(){await dbClr('spots');toast('全スポットを削除しました','info');renderSpots();updateCount()}
async function executeDeleteAllPlans(){await dbClr('plans');toast('全プランを削除しました','info');renderSavedPlans();updatePlanCount()}

// ============================================================
//  IndexedDB（spots + plans 2ストア）
// ============================================================
const DB_NAME='PottoDB_v4'; // バージョンアップでplansストア追加
let db=null;
function initDB(){
  return new Promise((res,rej)=>{
    const r=indexedDB.open(DB_NAME,2); // version2でplansストア追加
    r.onupgradeneeded=e=>{
      const d=e.target.result;
      if(!d.objectStoreNames.contains('spots'))
        d.createObjectStore('spots',{keyPath:'id',autoIncrement:true});
      if(!d.objectStoreNames.contains('plans'))
        d.createObjectStore('plans',{keyPath:'id',autoIncrement:true});
    };
    r.onsuccess=e=>{db=e.target.result;res()};
    r.onerror=()=>rej(r.error);
  });
}
function txDB(store,mode,f){
  return new Promise((res,rej)=>{
    const r=f(db.transaction(store,mode).objectStore(store));
    r.onsuccess=()=>res(r.result);
    r.onerror=()=>rej(r.error);
  });
}
const dbAdd=(store,d)=>txDB(store,'readwrite',s=>s.add(d));
const dbAll=(store)=>txDB(store,'readonly',s=>s.getAll());
const dbPut=(store,d)=>txDB(store,'readwrite',s=>s.put(d));
const dbDel=(store,id)=>txDB(store,'readwrite',s=>s.delete(id));
const dbClr=(store)=>txDB(store,'readwrite',s=>s.clear());

// エクスポート：spotsとplans両方
async function exportData(){
  const spots=await dbAll('spots');
  const plans=await dbAll('plans');
  const blob=new Blob([JSON.stringify({version:2,exportedAt:new Date().toISOString(),spots,plans},null,2)],{type:'application/json'});
  const a=document.createElement('a');a.href=URL.createObjectURL(blob);
  a.download=`potto_backup_${new Date().toLocaleDateString('ja').replace(/\//g,'-')}.json`;
  a.click();toast('⬇️ エクスポートしました','success');
}
async function importData(e){
  const file=e.target.files[0];if(!file)return;
  const reader=new FileReader();
  reader.onload=async ev=>{
    try{
      const data=JSON.parse(ev.target.result);
      let sc=0,pc=0;
      const spots=data.spots||( Array.isArray(data)?data:[] );
      for(const s of spots){const{id,...rest}=s;await dbAdd('spots',rest);sc++}
      if(data.plans){for(const p of data.plans){const{id,...rest}=p;await dbAdd('plans',rest);pc++}}
      toast(`✅ スポット${sc}件・プラン${pc}件インポートしました`,'success');
      updateCount();updatePlanCount();renderSpots();renderSavedPlans();
    }catch(err){toast('インポート失敗: '+err.message,'error')}
  };
  reader.readAsText(file);e.target.value='';
}

// ============================================================
//  TABS
// ============================================================
function switchTab(b,t){
  document.querySelectorAll('.tab-btn').forEach(x=>x.classList.remove('active'));
  document.querySelectorAll('.panel').forEach(x=>x.classList.remove('active'));
  b.classList.add('active');
  document.getElementById('panel-'+t).classList.add('active');
  if(t==='spots')renderSpots();
  if(t==='plan'){renderPlanAreas();initPrefSelect()}
  if(t==='saved')renderSavedPlans();
}

// ============================================================
//  IMAGE HANDLING（複数対応）
// ============================================================
function handleImg(e,src){
  const files=Array.from(e.target.files).filter(f=>f.type.startsWith('image/'));
  if(!files.length)return;
  pendingImages=[];
  document.getElementById('pvGrid').innerHTML='';
  document.getElementById('pvbox').style.display='block';
  document.getElementById('anaResult').style.display='none';
  let loaded=0;
  files.forEach((file,idx)=>{
    const item=document.createElement('div');
    item.className='pv-item';item.id=`pv-item-${idx}`;
    item.innerHTML=`<div style="width:100%;height:100%;background:var(--pl);display:flex;align-items:center;justify-content:center"><span class="spinner dark"></span></div><div class="pv-badge">${idx+1}</div><div class="pv-done" id="pvdone-${idx}">✓</div><div class="pv-err" id="pverr-${idx}">!</div>`;
    document.getElementById('pvGrid').appendChild(item);
    const reader=new FileReader();
    reader.onload=ev=>{
      const dataURL=ev.target.result;
      const b64=dataURL.split(',')[1];
      pendingImages.push({b64,mime:file.type,name:file.name,size:file.size,dataURL,idx});
      item.innerHTML=`<img src="${dataURL}" alt="${file.name}"/><div class="pv-badge">${idx+1}</div><div class="pv-done" id="pvdone-${idx}">✓</div><div class="pv-err" id="pverr-${idx}">!</div>`;
      loaded++;
      if(loaded===files.length){
        pendingImages.sort((a,b)=>a.idx-b.idx);
        document.getElementById('pvinfo').textContent=`${src==='cam'?'📷 カメラ':'🖼️ 選択'} — ${files.length}枚選択`;
        document.getElementById('anaBtn').disabled=false;
        document.getElementById('clrBtn').style.display='inline-flex';
        document.getElementById('anaBtn').textContent=files.length>1?`🔍 ${files.length}枚をまとめて解析`:'🔍 AIで解析する';
      }
    };
    reader.readAsDataURL(file);
  });
}
function clearImg(){
  pendingImages=[];
  document.getElementById('pvbox').style.display='none';
  document.getElementById('pvGrid').innerHTML='';
  document.getElementById('pvinfo').textContent='';
  document.getElementById('camIn').value='';
  document.getElementById('galIn').value='';
  document.getElementById('anaBtn').disabled=true;
  document.getElementById('anaBtn').textContent='🔍 AIで解析する';
  document.getElementById('clrBtn').style.display='none';
  document.getElementById('anaResult').style.display='none';
  document.getElementById('batchProgress').style.display='none';
}
function markPvDone(idx,ok){
  const d=document.getElementById(`pvdone-${idx}`);
  const r=document.getElementById(`pverr-${idx}`);
  if(d)d.style.display=ok?'flex':'none';
  if(r)r.style.display=ok?'none':'block';
}
const sleep=ms=>new Promise(r=>setTimeout(r,ms));

// ============================================================
//  GEMINI
// ============================================================
async function gemini(parts){
  if(!cfg.key){toast('⚙️ APIキーを設定してください','error');openSettings();throw new Error('no key')}
  const url=`https://generativelanguage.googleapis.com/v1beta/models/${cfg.model}:generateContent?key=${cfg.key}`;
  const body={contents:[{role:'user',parts}],generationConfig:{temperature:.7,maxOutputTokens:8192}};
  let res;
  try{res=await fetch(url,{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(body)})}
  catch(e){throw new Error('ネットワークエラー: '+e.message)}
  if(!res.ok){
    let m=`HTTP ${res.status}`;
    try{const e=await res.json();m=e?.error?.message||m}catch(_){}
    if(res.status===400)m+='\n→ APIキーかモデル名を確認';
    if(res.status===403)m+='\n→ APIキーが無効';
    if(res.status===429)m+='\n→ レート制限。少し待って再試行';
    throw new Error(m);
  }
  const d=await res.json();
  const t=d?.candidates?.[0]?.content?.parts?.[0]?.text;
  if(!t)throw new Error('レスポンス空 ('+(d?.candidates?.[0]?.finishReason||'不明')+')');
  return t;
}
function xJSON(raw){
  let s=raw.trim().replace(/^```(?:json)?\s*/i,'').replace(/\s*```$/,'').trim();
  const ai=s.indexOf('['),oi=s.indexOf('{');
  if(ai===-1&&oi===-1)throw new Error('JSONなし:\n'+raw.slice(0,200));
  if(ai!==-1&&(oi===-1||ai<oi))s=s.slice(ai,s.lastIndexOf(']')+1);
  else s=s.slice(oi,s.lastIndexOf('}')+1);
  return JSON.parse(s);
}

// ============================================================
//  ANALYZE
// ============================================================
const ANA_PROMPT=`この画像はSNS投稿または旅行スクリーンショットです。旅行スポット情報を読み取り推測も加えて以下のJSONのみ返答（説明不要）:
{"name":"スポット名","area":"エリア・都市名","prefecture":"都道府県","category":"グルメ/観光/カフェ/自然/ショッピング/宿泊/アクティビティ/その他","tags":["タグ1","タグ2","タグ3"],"description":"説明100文字以内","highlights":"見どころ50文字以内","bestTime":"おすすめ時期・時間帯","rating":4.2}`;

async function analyzeImages(){
  if(!pendingImages.length)return;
  const btn=document.getElementById('anaBtn');btn.disabled=true;
  const total=pendingImages.length;
  if(total===1){
    btn.innerHTML='<span class="spinner"></span> 解析中…';
    const img=pendingImages[0];
    try{
      const raw=await gemini([{text:ANA_PROMPT},{inline_data:{mime_type:img.mime,data:img.b64}}]);
      const spot=xJSON(raw);
      const ns={...spot,source:'image',addedAt:new Date().toISOString(),imageBase64:`data:${img.mime};base64,${img.b64}`};
      await dbAdd('spots',ns);await updateCount();lastSpot=ns;
      markPvDone(0,true);showResPrev(ns);document.getElementById('anaResult').style.display='block';
      toast(`💗 「${ns.name}」をストックしました！`,'success');
    }catch(e){markPvDone(0,false);showErrPrev('画像解析エラー',e.message)}
    btn.disabled=false;btn.innerHTML='🔍 AIで解析する';
  }else{
    const prog=document.getElementById('batchProgress');
    const bpText=document.getElementById('bpText');
    const bpBar=document.getElementById('bpBar');
    prog.style.display='block';
    btn.innerHTML=`<span class="spinner"></span> 解析中 (0/${total})`;
    let successCount=0,lastSaved=null;
    for(let i=0;i<total;i++){
      const img=pendingImages[i];
      bpText.textContent=`解析中… ${i+1} / ${total} 枚目`;
      bpBar.style.width=`${(i/total)*100}%`;
      btn.innerHTML=`<span class="spinner"></span> 解析中 (${i+1}/${total})`;
      try{
        const raw=await gemini([{text:ANA_PROMPT},{inline_data:{mime_type:img.mime,data:img.b64}}]);
        const spot=xJSON(raw);
        const ns={...spot,source:'image',addedAt:new Date().toISOString(),imageBase64:`data:${img.mime};base64,${img.b64}`};
        await dbAdd('spots',ns);await updateCount();
        markPvDone(i,true);lastSaved=ns;lastSpot=ns;successCount++;
        toast(`💗 「${ns.name}」を保存 (${i+1}/${total})`,'success');
      }catch(e){
        markPvDone(i,false);toast(`❌ ${i+1}枚目の解析失敗`,'error');
        if(e.message.includes('429'))await sleep(3000);
      }
      if(i<total-1)await sleep(800);
    }
    bpBar.style.width='100%';
    bpText.textContent=`完了！ ${successCount} / ${total} 枚を保存しました`;
    if(lastSaved){showResPrev(lastSaved);document.getElementById('anaResult').style.display='block'}
    toast(`🎉 ${successCount}枚の解析が完了しました！`,'success');
    btn.disabled=false;btn.innerHTML='🔍 AIで解析する';
  }
}

async function analyzeCap(){
  const cap=document.getElementById('capIn').value.trim();
  if(!cap){toast('キャプションを入力してください','error');return}
  const btn=document.getElementById('capBtn');btn.disabled=true;btn.innerHTML='<span class="spinner"></span> 解析中…';
  const p=`以下のSNSキャプションから旅行スポット情報を抽出・推測しJSONのみ返答:\n"${cap}"\n{"name":"スポット名","area":"エリア・都市名","prefecture":"都道府県","category":"グルメ/観光/カフェ/自然/ショッピング/宿泊/アクティビティ/その他","tags":["タグ1","タグ2","タグ3"],"description":"説明100文字以内","highlights":"見どころ50文字以内","bestTime":"おすすめ時期・時間帯","rating":4.0}`;
  try{
    const raw=await gemini([{text:p}]);
    const spot=xJSON(raw);
    const ns={...spot,source:'caption',addedAt:new Date().toISOString()};
    await dbAdd('spots',ns);await updateCount();lastSpot=ns;
    showResPrev(ns);document.getElementById('anaResult').style.display='block';
    document.getElementById('capIn').value='';
    toast(`💗 「${ns.name}」をストックしました！`,'success');
  }catch(e){showErrPrev('キャプション解析エラー',e.message)}
  btn.disabled=false;btn.innerHTML='🤖 解析する';
}

function showResPrev(s){
  const stars='★'.repeat(Math.min(5,Math.round(s.rating||4)))+'☆'.repeat(Math.max(0,5-Math.round(s.rating||4)));
  const tags=(s.tags||[]).map((t,i)=>`<span class="tag ${i%3===1?'m':i%3===2?'l':''}">${t}</span>`).join('');
  document.getElementById('resPrev').innerHTML=`<div style="display:flex;justify-content:space-between;align-items:flex-start;gap:8px;margin-bottom:8px"><div><div style="font-size:.95rem;font-weight:800;margin-bottom:2px">${s.name||'未取得'}</div><div style="color:var(--pm);font-size:.72rem;font-weight:600">📍 ${s.area||''} ${s.prefecture?'/ '+s.prefecture:''}</div><div style="margin-top:4px"><span class="tag">${s.category||''}</span> <span style="background:var(--ml);color:#065f46;border-radius:8px;padding:1px 7px;font-size:.64rem;font-weight:700">✅ 保存済み</span></div></div><div style="text-align:right;flex-shrink:0"><div class="sr">${stars}</div><div style="font-size:.68rem;color:var(--tx2);margin-top:2px">🕐 ${s.bestTime||'-'}</div></div></div><div style="font-size:.74rem;color:var(--tx2);margin-bottom:6px;line-height:1.6">${s.description||''}</div><div style="font-size:.72rem;color:var(--pd);font-weight:600;margin-bottom:8px">💕 ${s.highlights||''}</div><div class="sctags">${tags}</div>`;
}
function showErrPrev(title,detail){
  document.getElementById('anaResult').style.display='block';
  document.getElementById('resPrev').innerHTML=`<div style="color:#be123c;font-weight:700;margin-bottom:5px">❌ ${title}</div><div class="ed">${detail}</div><div style="margin-top:8px;font-size:.72rem;color:var(--tx2);line-height:1.7">よくある原因:<br>・APIキー未設定・無効 → ⚙️で再設定<br>・モデル名エラー → gemini-2.5-flash を選択<br>・レート制限(429) → 1分待って再試行<br>・画像大きすぎ → 2MB以下推奨</div>`;
  toast(title,'error');
}

// ============================================================
//  EDIT MODAL
// ============================================================
function openEditModal(spotId){
  editingSpotId=spotId;
  if(spotId){dbAll('spots').then(all=>{const s=all.find(x=>x.id===spotId);if(s){fillEF(s);document.getElementById('editModal').classList.add('open')}})}
  else{if(!lastSpot)return;fillEF(lastSpot);document.getElementById('editModal').classList.add('open')}
}
function fillEF(s){document.getElementById('ef-name').value=s.name||'';document.getElementById('ef-area').value=s.area||'';document.getElementById('ef-pref').value=s.prefecture||'';document.getElementById('ef-cat').value=s.category||'その他';document.getElementById('ef-tags').value=(s.tags||[]).join(', ');document.getElementById('ef-desc').value=s.description||'';document.getElementById('ef-hl').value=s.highlights||'';document.getElementById('ef-bt').value=s.bestTime||'';document.getElementById('ef-rating').value=s.rating||'4.0'}
function closeEditModal(){document.getElementById('editModal').classList.remove('open')}
async function saveEditModal(){
  const all=await dbAll('spots');
  const target=editingSpotId?all.find(x=>x.id===editingSpotId):all[all.length-1];
  if(!target){toast('スポットが見つかりません','error');return}
  target.name=document.getElementById('ef-name').value;
  target.area=document.getElementById('ef-area').value;
  target.prefecture=document.getElementById('ef-pref').value;
  target.category=document.getElementById('ef-cat').value;
  target.tags=document.getElementById('ef-tags').value.split(',').map(t=>t.trim()).filter(Boolean);
  target.description=document.getElementById('ef-desc').value;
  target.highlights=document.getElementById('ef-hl').value;
  target.bestTime=document.getElementById('ef-bt').value;
  target.rating=parseFloat(document.getElementById('ef-rating').value)||4.0;
  await dbPut('spots',target);closeEditModal();renderSpots();toast('✅ 更新しました','success');
}

// ============================================================
//  SPOTS LIST
// ============================================================
async function renderSpots(){
  const all=await dbAll('spots');
  const q=document.getElementById('srchSpot').value.toLowerCase();
  const fa=document.getElementById('filtArea').value;
  const areas=[...new Set(all.map(s=>s.area).filter(Boolean))];
  const sel=document.getElementById('filtArea');const pv=sel.value;
  sel.innerHTML='<option value="">全エリア</option>'+areas.map(a=>`<option value="${a}" ${a===pv?'selected':''}>${a}</option>`).join('');sel.value=pv;
  const list=all.filter(s=>(!q||(s.name||'').toLowerCase().includes(q)||(s.area||'').toLowerCase().includes(q)||(s.tags||[]).some(t=>t.toLowerCase().includes(q)))&&(!fa||s.area===fa));
  const g=document.getElementById('spotGrid');
  if(!list.length){g.innerHTML=`<div class="empty" style="grid-column:1/-1"><div class="ei">🌸</div><p style="font-size:.78rem">${all.length===0?'まだスポットがありません<br>「追加」タブから追加してね💕':'検索結果がありません'}</p></div>`;return}
  g.innerHTML=list.map(s=>{
    const stars='★'.repeat(Math.min(5,Math.round(s.rating||4)))+'☆'.repeat(Math.max(0,5-Math.round(s.rating||4)));
    const tags=(s.tags||[]).slice(0,2).map((t,j)=>`<span class="tag ${j===1?'m':''}">${t}</span>`).join('');
    // サムネイル：保存画像があればそれを、なければカテゴリアイコン＋Google画像検索ボタン
    const gmImgQ=encodeURIComponent(`${s.name} ${s.area||''} 写真`);
    const thumb=s.imageBase64
      ?`<img class="sci" src="${s.imageBase64}" alt="${s.name}" onerror="this.parentElement.innerHTML='<div class=sct>${CE[s.category]||'📍'}</div>'"/>`
      :`<div class="sct">${CE[s.category]||'📍'}<button class="img-search-btn" onclick="event.stopPropagation();window.open('https://www.google.com/search?q=${gmImgQ}&tbm=isch','_blank')" title="Google画像検索">🔍画像</button></div>`;
    return `<div class="sc" onclick="openSpotModal(${s.id})">${thumb}<div class="scb"><div class="scn">${s.name||'名称未設定'}</div><div class="sca">📍 ${s.area||''}</div><div class="sctags">${tags}</div></div><div class="scf"><span class="sr">${stars}</span><button class="btn bo bsm" onclick="event.stopPropagation();delSpot(${s.id})">🗑️</button></div></div>`;
  }).join('');
}
async function delSpot(id){await dbDel('spots',id);toast('削除しました','info');renderSpots();updateCount()}
async function updateCount(){const all=await dbAll('spots');document.getElementById('spotCount').textContent=all.length}
async function updatePlanCount(){const all=await dbAll('plans');document.getElementById('planCount').textContent=all.length}

// ============================================================
//  SPOT DETAIL MODAL
// ============================================================
async function openSpotModal(id){
  const all=await dbAll('spots');const s=all.find(x=>x.id===id);if(!s)return;
  const stars='★'.repeat(Math.min(5,Math.round(s.rating||4)))+'☆'.repeat(Math.max(0,5-Math.round(s.rating||4)));
  const tags=(s.tags||[]).map((t,i)=>`<span class="tag ${i%3===1?'m':i%3===2?'l':''}">${t}</span>`).join('');
  const gmQ=encodeURIComponent(`${s.name} ${s.area||''} ${s.prefecture||''}`);
  const gmImgQ=encodeURIComponent(`${s.name} ${s.area||''} 写真`);
  const img=s.imageBase64?`<img class="spot-detail-img" src="${s.imageBase64}" alt="${s.name}"/>`:`<div class="spot-detail-thumb">${CE[s.category]||'📍'}</div>`;
  document.getElementById('spotModalContent').innerHTML=`${img}<div class="spot-detail-body"><div style="display:flex;justify-content:space-between;align-items:flex-start;gap:8px;margin-bottom:10px"><div><div style="font-size:1rem;font-weight:800;margin-bottom:3px">${s.name||'名称未設定'}</div><div style="color:var(--pm);font-size:.74rem;font-weight:600">📍 ${s.area||''} ${s.prefecture?'/ '+s.prefecture:''}</div><div style="margin-top:5px"><span class="tag">${s.category||''}</span></div></div><div style="text-align:right;flex-shrink:0"><div class="sr">${stars}</div><div style="font-size:.68rem;color:var(--tx2);margin-top:2px">🕐 ${s.bestTime||'-'}</div></div></div><div style="font-size:.76rem;color:var(--tx2);margin-bottom:7px;line-height:1.6">${s.description||''}</div><div style="font-size:.74rem;color:var(--pd);font-weight:600;margin-bottom:9px">💕 ${s.highlights||''}</div><div class="sctags" style="margin-bottom:12px">${tags}</div><div style="display:grid;grid-template-columns:1fr 1fr;gap:8px"><a href="https://www.google.com/maps/search/?api=1&query=${gmQ}" target="_blank" style="text-decoration:none"><button class="gmap-btn">🗺️ Google Maps</button></a><a href="https://www.google.com/search?q=${gmImgQ}&tbm=isch" target="_blank" style="text-decoration:none"><button class="gmap-btn" style="background:linear-gradient(135deg,#ea4335,#fbbc04)">🖼️ 画像検索</button></a></div><div style="display:grid;grid-template-columns:1fr 1fr;gap:8px;margin-top:8px"><button class="btn bo bsm" onclick="closeSpotModal();openEditModal(${s.id})">✏️ 編集</button><button class="btn bd2 bsm" onclick="closeSpotModal();delSpot(${s.id})">🗑️ 削除</button></div></div>`;
  document.getElementById('spotModal').classList.add('open');
}
function closeSpotModal(){document.getElementById('spotModal').classList.remove('open')}

// ============================================================
//  AREA UI
// ============================================================
function initPrefSelect(){
  const sel=document.getElementById('prefSelect');
  if(sel.options.length>1)return;
  PREFS.forEach(p=>{const o=document.createElement('option');o.value=p;o.textContent=p;sel.appendChild(o)});
}
function addAreaFromPref(){const sel=document.getElementById('prefSelect');const v=sel.value;if(v)addArea(v);sel.value=''}
function addArea(name){const n=name.trim();if(!n||selectedAreas.includes(n))return;selectedAreas.push(n);renderAreaChips();document.getElementById('areaKeyword').value='';hideAreaSuggest()}
function removeArea(name){selectedAreas=selectedAreas.filter(a=>a!==name);renderAreaChips()}
function renderAreaChips(){
  const wrap=document.getElementById('selectedAreaChips');const noMsg=document.getElementById('noAreaMsg');
  if(selectedAreas.length===0){noMsg.style.display='';wrap.innerHTML='';wrap.appendChild(noMsg);return}
  noMsg.style.display='none';
  wrap.innerHTML=selectedAreas.map(a=>`<div class="area-chip">${a}<button onclick="removeArea('${a.replace(/'/g,"\\'")}')">✕</button></div>`).join('');
}
function showAreaSuggest(){
  const kw=document.getElementById('areaKeyword').value.trim().toLowerCase();const sug=document.getElementById('areaSuggest');
  if(!kw){sug.classList.remove('show');return}
  const all=[...PREFS,...AREA_SUGGESTIONS];
  const matches=all.filter(a=>a.toLowerCase().includes(kw)&&!selectedAreas.includes(a)).slice(0,8);
  if(!matches.length){sug.classList.remove('show');return}
  sug.innerHTML=matches.map(m=>`<div class="sug-item" onclick="addArea('${m.replace(/'/g,"\\'")}')">📍 ${m}</div>`).join('');
  sug.classList.add('show');
}
function hideAreaSuggest(){document.getElementById('areaSuggest').classList.remove('show')}
function onAreaKeydown(e){if(e.key==='Enter'){const kw=document.getElementById('areaKeyword').value.trim();if(kw)addArea(kw)}}
document.addEventListener('click',e=>{if(!e.target.closest('.area-keyword-wrap'))hideAreaSuggest()});
function renderPlanAreas(){}

// ============================================================
//  PLAN GENERATION
// ============================================================
async function generatePlan(){
  if(selectedAreas.length===0){toast('エリアを選択してください','error');return}
  const all=await dbAll('spots');
  const areas=selectedAreas;
  let spots=all.filter(s=>areas.some(a=>(s.area||'').includes(a)||(s.prefecture||'').includes(a)));
  if(spots.length===0)spots=all;
  const spotsInfo=spots.length>0?spots.map(s=>`ID:${s.id}|${s.name}|${s.area}|${s.category}|${s.description||''}|見どころ:${s.highlights||''}`).join('\n'):'（登録スポットなし）';
  const to=document.getElementById('travelTo').value;
  const loc=document.getElementById('travelLocal').value;
  const type=document.getElementById('planType').value;
  const days=document.getElementById('planDays').value;
  const style=document.getElementById('planStyle').value;
  const req=document.getElementById('planReq').value;

  const prompt=`あなたはプロの旅行プランナーです。以下の条件で充実した旅行プランをJSON形式で作成してください。

旅行条件:
エリア: ${areas.join('、')}
日数: ${days}
スタイル: ${style}
旅行者: ${type}
現地までの移動: ${to}
現地での移動: ${loc}
リクエスト: ${req||'なし'}

ユーザーのお気に入りスポット（必ず組み込んでください）:
${spotsInfo}

重要な指示:
1. 上記のお気に入りスポットを必ずプランに組み込んでください
2. さらにエリアの人気スポット・グルメ・カフェ・観光地などAI独自のおすすめスポットも追加してください
3. 朝食・昼食・夕食も具体的な店名・料理名で提案してください
4. 移動時間・移動手段も具体的に記載してください
5. ハッシュタグ・アスタリスク・記号類は一切使わないこと
6. 日本語で句読点を使って読みやすく記載してください

以下のJSON形式のみで返答してください:
{"title":"旅行プランのタイトル","subtitle":"サブタイトル","areas":["エリア名"],"days_label":"${days}","style_label":"${style}","type_label":"${type}","days":[{"day":1,"label":"1日目のテーマ","items":[{"time":"09:00","type":"spot","name":"場所名","desc":"詳細説明","spotId":null,"isAiRecommend":false}]}]}

typeの意味: spot=観光スポット、move=移動、meal=食事、stay=宿泊、note=アドバイス
spotId: お気に入りスポットのIDまたはnull
isAiRecommend: AI独自追加ならtrue`;

  const btn=document.getElementById('planBtn');btn.disabled=true;btn.innerHTML='<span class="spinner"></span> AIがプラン作成中…';
  try{
    const raw=await gemini([{text:prompt}]);
    const plan=xJSON(raw);

    // ① プランを自動保存
    const savedPlan={
      ...plan,
      savedAt:new Date().toISOString(),
      conditions:{areas,days,style,type,travelTo:to,travelLocal:loc,req}
    };
    await dbAdd('plans',savedPlan);
    await updatePlanCount();

    currentPlanData={plan,spots};
    openPlanModal(plan,spots);
    toast('🎉 プランが完成・自動保存されました！','success');
  }catch(e){toast('プラン生成失敗: '+e.message,'error')}
  btn.disabled=false;btn.innerHTML='✨ AIプラン生成';
}

// ============================================================
//  PLAN MODAL（表示）
// ============================================================
function openPlanModal(plan,spots){
  document.getElementById('planTitle').textContent=plan.title||'旅行プラン';
  document.getElementById('planSub').textContent=plan.subtitle||'';
  const tl=document.getElementById('planTL');
  tl.innerHTML=(plan.days||[]).map(day=>`
    <div class="day-block">
      <div class="day-title">${day.day}日目　${day.label||''}</div>
      <div class="tl">
        ${(day.items||[]).map(item=>{
          const ti=TI[item.type]||TI.spot;
          const sp=item.spotId?spots.find(s=>s.id===item.spotId):null;
          const imgHtml=sp?.imageBase64?`<img class="tl-img" src="${sp.imageBase64}" alt="${sp.name}" onerror="this.style.display='none'"/>`:'';
          const gmQ=encodeURIComponent(`${item.name} ${selectedAreas[0]||''}`);
          const gmLink=item.type!=='move'&&item.type!=='note'?`<a href="https://www.google.com/maps/search/?api=1&query=${gmQ}" target="_blank" style="font-size:.6rem;color:var(--pm);font-weight:600;text-decoration:none">地図</a>`:'';
          const aiBadge=item.isAiRecommend?`<span style="background:#f3e8ff;color:#7c3aed;border-radius:10px;padding:1px 6px;font-size:.58rem;font-weight:700;flex-shrink:0">AI推奨</span>`:'';
          return `<div class="tl-item"><div class="tl-dot"></div><div class="tl-time">${item.time}</div><div class="tl-card">${imgHtml}<div class="tl-name"><span class="tl-type ${ti.cls}">${ti.label}</span><span>${item.name}</span>${aiBadge}${gmLink}</div><div class="tl-desc" contenteditable="true">${item.desc||''}</div></div></div>`;
        }).join('')}
      </div>
    </div>`).join('');
  document.getElementById('planModal').classList.add('open');
}
function closePlanModal(){document.getElementById('planModal').classList.remove('open')}

// ============================================================
//  保存済みプラン一覧
// ============================================================
async function renderSavedPlans(){
  const all=await dbAll('plans');
  const container=document.getElementById('savedPlanList');
  if(!all.length){
    container.innerHTML=`<div class="empty"><div class="ei">🗺️</div><p style="font-size:.78rem">保存済みプランがありません<br>「プラン」タブでAIプランを生成してね💕</p></div>`;
    return;
  }
  // 新しい順に表示
  const sorted=[...all].reverse();
  container.innerHTML=sorted.map(plan=>{
    const c=plan.conditions||{};
    const date=plan.savedAt?new Date(plan.savedAt).toLocaleDateString('ja',{month:'short',day:'numeric',hour:'2-digit',minute:'2-digit'}):'';
    const metaTags=[
      c.days&&`<span class="plan-meta-tag">📅 ${c.days}</span>`,
      c.type&&`<span class="plan-meta-tag">👥 ${c.type}</span>`,
      c.style&&`<span class="plan-meta-tag">✨ ${c.style}</span>`,
      c.travelTo&&`<span class="plan-meta-tag">🚗 ${c.travelTo}</span>`,
    ].filter(Boolean).join('');
    const areas=(c.areas||[]).join('・');
    return `<div class="plan-card" onclick="openSavedPlan(${plan.id})">
      <div class="plan-card-title">${plan.title||'旅行プラン'}</div>
      <div class="plan-card-sub">${areas?`📍 ${areas}　`:''}<span style="font-size:.66rem;color:var(--tx2)">${date}</span></div>
      <div class="plan-card-meta">${metaTags}</div>
      <div style="display:flex;gap:6px;justify-content:flex-end">
        <button class="btn bo bsm" onclick="event.stopPropagation();shareSavedPlan(${plan.id})">📤 共有</button>
        <button class="btn bd2 bsm" onclick="event.stopPropagation();deleteSavedPlan(${plan.id})">🗑️</button>
      </div>
    </div>`;
  }).join('');
}

async function openSavedPlan(planId){
  const all=await dbAll('plans');
  const plan=all.find(p=>p.id===planId);if(!plan)return;
  const spots=await dbAll('spots');
  // selectedAreasを保存済み条件から復元
  if(plan.conditions?.areas)selectedAreas=[...plan.conditions.areas];
  openPlanModal(plan,spots);
}

async function deleteSavedPlan(id){
  await dbDel('plans',id);
  toast('プランを削除しました','info');
  renderSavedPlans();updatePlanCount();
}

async function shareSavedPlan(planId){
  const all=await dbAll('plans');
  const plan=all.find(p=>p.id===planId);if(!plan)return;
  const spots=await dbAll('spots');
  selectedAreas=plan.conditions?.areas||[];
  openPlanModal(plan,spots);
  // モーダルが開いたあと少し待ってからシェア
  setTimeout(()=>sharePlan('copy'),300);
}

// ============================================================
//  SHARE
// ============================================================
function getCurrentPlanText(){
  let t=`${document.getElementById('planTitle').textContent}\n${document.getElementById('planSub').textContent}\n\n`;
  document.querySelectorAll('.day-block').forEach(d=>{
    t+=d.querySelector('.day-title').textContent+'\n';
    d.querySelectorAll('.tl-item').forEach(i=>{
      const time=i.querySelector('.tl-time').textContent;
      const name=i.querySelector('.tl-name').textContent.replace(/地図|AI推奨/g,'').trim();
      const desc=i.querySelector('.tl-desc').textContent.trim();
      t+=`  ${time} ${name}\n  ${desc}\n\n`;
    });
  });
  return t;
}
async function sharePlan(method){
  const text=getCurrentPlanText();const title=document.getElementById('planTitle').textContent;
  if(method==='native'&&navigator.share){
    try{await navigator.share({title,text});toast('共有しました','success')}
    catch(e){if(e.name!=='AbortError')toast('共有失敗: '+e.message,'error')}
    return;
  }
  if(method==='line'){window.open(`https://social-plugins.line.me/lineit/share?url=${encodeURIComponent('https://potto.app')}&text=${encodeURIComponent(title+'\n\n'+text.slice(0,500))}`);return}
  if(method==='gmail'){window.open(`mailto:?subject=${encodeURIComponent('[Potto] '+title)}&body=${encodeURIComponent(text)}`);return}
  try{await navigator.clipboard.writeText(text);toast('📋 コピーしました','success')}
  catch(e){toast('コピー失敗','error')}
}

// ============================================================
//  NEARBY
// ============================================================
async function searchNearby(){
  const btn=document.getElementById('nbBtn');btn.disabled=true;btn.innerHTML='<span class="spinner"></span> 位置取得中…';
  if(!navigator.geolocation){toast('位置情報非対応ブラウザです','error');btn.disabled=false;btn.innerHTML='📍 現在地で検索';return}
  navigator.geolocation.getCurrentPosition(
    async pos=>{
      const loc=`緯度${pos.coords.latitude.toFixed(4)}, 経度${pos.coords.longitude.toFixed(4)}`;
      document.getElementById('locInfo').textContent='📍 取得完了: '+loc;
      btn.disabled=false;btn.innerHTML='📍 現在地で検索';
      await runNearby(loc);
    },
    err=>{toast('位置情報取得失敗: '+err.message,'error');btn.disabled=false;btn.innerHTML='📍 現在地で検索'},
    {enableHighAccuracy:true,timeout:10000}
  );
}
async function searchNearbyManual(){
  const p=prompt('場所名や住所を入力（例：東京都渋谷区、京都嵐山）');
  if(!p)return;
  document.getElementById('locInfo').textContent='📍 場所: '+p;
  await runNearby(p);
}
async function runNearby(loc){
  const cat=document.getElementById('nbCat').value;
  const rad=document.getElementById('nbRad').value;
  const kw=document.getElementById('nbKw').value;
  const all=await dbAll('spots');
  const stockHint=all.length?'\nユーザーのストック済みスポット（同じ場所なら isStocked:true）:\n'+all.slice(0,10).map(s=>`・${s.name}（${s.area}）`).join('\n'):'';
  const prompt=`地域の旅行ガイドとして、以下の条件で周辺のおすすめスポットを15件提案してください。

場所: ${loc}
カテゴリ: ${cat}
範囲: ${rad}
こだわり条件: ${kw||'なし'}
${stockHint}

重要な指示:
1. 有名観光地だけでなく、地元民に人気の穴場スポットや最近話題の場所も含めてください
2. 各スポットに具体的なおすすめ理由を記載してください
3. 記号（ハッシュタグ・アスタリスクなど）は一切使わないこと
4. 日本語で句読点を使って読みやすく記載してください

JSONの配列のみ返答:
[{"name":"スポット名","type":"種別","description":"説明（80文字以内）","distance":"おおよその距離","highlight":"おすすめポイント","bestTiming":"おすすめ時間帯・季節","isStocked":false}]`;

  const res=document.getElementById('nbResults');
  res.innerHTML='<div style="text-align:center;padding:28px;color:var(--tx2)"><span class="spinner dark"></span> AIが周辺スポットを検索中…</div>';
  try{
    const raw=await gemini([{text:prompt}]);const spots=xJSON(raw);
    const stocked=spots.filter(s=>s.isStocked);const normal=spots.filter(s=>!s.isStocked);
    let html='';
    if(stocked.length>0)html+=`<div class="ai-section"><div class="ai-section-title">⭐ お気に入りストック済みスポット</div><div class="ng" style="margin-top:0">${stocked.map(s=>nearbyCard(s,loc)).join('')}</div></div>`;
    html+=`<div class="ai-section" style="background:linear-gradient(135deg,var(--pl),var(--peachl));border-color:var(--pink)"><div class="ai-section-title" style="color:var(--pd)">✨ AIおすすめスポット（${normal.length}件）</div><div class="ng" style="margin-top:0">${normal.map(s=>nearbyCard(s,loc)).join('')}</div></div>`;
    res.innerHTML=html;
    toast(`🔍 ${spots.length}件見つかりました`,'success');
  }catch(e){res.innerHTML=`<div style="padding:10px"><div class="ed">エラー: ${e.message}</div></div>`}
}
function nearbyCard(s,loc){
  const gmQ=encodeURIComponent(`${s.name} ${loc}`);
  return `<div class="nc" style="${s.isStocked?'border-color:var(--peach);background:var(--peachl);':''}">
    <div class="nn">${s.isStocked?'⭐ ':''}${s.name}</div>
    <div class="nt">${s.type}</div>
    <div class="nd">${s.description}</div>
    <div style="font-size:.68rem;color:var(--pd);font-weight:600;margin-top:4px">💕 ${s.highlight}</div>
    ${s.bestTiming?`<div style="font-size:.64rem;color:#0369a1;font-weight:600;margin-top:3px">🕐 ${s.bestTiming}</div>`:''}
    <div style="font-size:.64rem;color:#059669;font-weight:600;margin-top:3px">📏 ${s.distance}</div>
    <a href="https://www.google.com/maps/search/?api=1&query=${gmQ}" target="_blank">
      <button class="btn bo bsm" style="margin-top:7px;width:100%;font-size:.62rem">🗺️ Googleマップで見る</button>
    </a>
  </div>`;
}

// ============================================================
//  TOAST
// ============================================================
function toast(msg,type='info'){
  const c=document.getElementById('tc');const t=document.createElement('div');
  t.className=`toast ${type}`;t.textContent=msg;c.appendChild(t);
  setTimeout(()=>{t.style.cssText='opacity:0;transform:translateY(10px);transition:.3s';setTimeout(()=>t.remove(),300)},2600);
}

// ============================================================
//  INIT
// ============================================================
async function init(){
  loadCfg();
  await initDB();
  await updateCount();
  await updatePlanCount();
  await renderSpots();
  initPrefSelect();
  if(!cfg.key){setTimeout(()=>{toast('⚙️ 右上の設定ボタンからAPIキーを設定してください','info');openSettings()},700)}
  else toast('💗 おかえりなさい！','success');
}
init();
</script>
</body>
</html>
