import{m as _e,V as re}from"./VCheckboxBtn-6b1c1368.js";import{p as q,ab as Fe,aB as ke,c as Y,q as oe,ae as Le,bk as Ee,h as D,l as ae,ah as Oe,ai as fe,j as o,x as M,b0 as Me,m as se,bl as He,a as Ce,b as Se,aS as Ie,d as Pe,f as ze,aU as Ue,aX as ee,I as ne,b8 as me,aN as $e,aO as qe,aP as Ke,A as Ne,aQ as Ge,bm as je,aR as Xe,bn as We,e as we,bo as Je,bp as Qe,b9 as Ye,bq as Ze,br as el,bs as ll,D as al,bt as tl,n as he,o as nl,bu as ol,bv as sl,aI as W,v as le,H as ul,F as X,bw as pe,aV as xe,w as Q,aT as il,s as $,af as ge,r as J,bx as Te,ap as ie,by as cl,J as rl,aH as Ae,bz as dl,ba as vl,bA as fl,bB as ml,z as te,t as hl,bC as pl,bD as gl,aC as yl,aD as bl,bE as Vl,aE as kl,aG as Cl,ar as ye,au as Sl,av as Il,aw as be,aJ as Pl,X as wl,an as xl,az as Tl,aL as Ve}from"./index-d802a291.js";const Al=q({...Fe(),...ke(_e(),["inline"])},"VCheckbox"),jl=Y()({name:"VCheckbox",inheritAttrs:!1,props:Al(),emits:{"update:modelValue":e=>!0,"update:focused":e=>!0},setup(e,v){let{attrs:a,slots:r}=v;const l=oe(e,"modelValue"),{isFocused:f,focus:V,blur:i}=Le(e),n=Ee(),h=D(()=>e.id||`checkbox-${n}`);return ae(()=>{const[w,T]=Oe(a),d=fe.filterProps(e),C=re.filterProps(e);return o(fe,M({class:["v-checkbox",e.class]},w,d,{modelValue:l.value,"onUpdate:modelValue":k=>l.value=k,id:h.value,focused:f.value,style:e.style}),{...r,default:k=>{let{id:S,messagesId:t,isDisabled:y,isReadonly:I}=k;return o(re,M(C,{id:S.value,"aria-describedby":t.value,disabled:y.value,readonly:I.value},T,{modelValue:l.value,"onUpdate:modelValue":A=>l.value=A,onFocus:V,onBlur:i}),r)}})}),{}}});const Be=Symbol.for("vuetify:v-chip-group"),Bl=q({column:Boolean,filter:Boolean,valueComparator:{type:Function,default:Me},...se(),...He({selectedClass:"v-chip--selected"}),...Ce(),...Se(),...Ie({variant:"tonal"})},"VChipGroup");Y()({name:"VChipGroup",props:Bl(),emits:{"update:modelValue":e=>!0},setup(e,v){let{slots:a}=v;const{themeClasses:r}=Pe(e),{isSelected:l,select:f,next:V,prev:i,selected:n}=ze(e,Be);return Ue({VChip:{color:ee(e,"color"),disabled:ee(e,"disabled"),filter:ee(e,"filter"),variant:ee(e,"variant")}}),ae(()=>o(e.tag,{class:["v-chip-group",{"v-chip-group--column":e.column},r.value,e.class],style:e.style},{default:()=>{var h;return[(h=a.default)==null?void 0:h.call(a,{isSelected:l,select:f,next:V,prev:i,selected:n.value})]}})),{}}});const Dl=q({activeClass:String,appendAvatar:String,appendIcon:ne,closable:Boolean,closeIcon:{type:ne,default:"$delete"},closeLabel:{type:String,default:"$vuetify.close"},draggable:Boolean,filter:Boolean,filterIcon:{type:String,default:"$complete"},label:Boolean,link:{type:Boolean,default:void 0},pill:Boolean,prependAvatar:String,prependIcon:ne,ripple:{type:[Boolean,Object],default:!0},text:String,modelValue:{type:Boolean,default:!0},onClick:me(),onClickOnce:me(),...$e(),...se(),...qe(),...Ke(),...Ne(),...Ge(),...je(),...Xe(),...Ce({tag:"span"}),...Se(),...Ie({variant:"tonal"})},"VChip"),Rl=Y()({name:"VChip",directives:{Ripple:We},props:Dl(),emits:{"click:close":e=>!0,"update:modelValue":e=>!0,"group:selected":e=>!0,click:e=>!0},setup(e,v){let{attrs:a,emit:r,slots:l}=v;const{t:f}=we(),{borderClasses:V}=Je(e),{colorClasses:i,colorStyles:n,variantClasses:h}=Qe(e),{densityClasses:w}=Ye(e),{elevationClasses:T}=Ze(e),{roundedClasses:d}=el(e),{sizeClasses:C}=ll(e),{themeClasses:k}=Pe(e),S=oe(e,"modelValue"),t=al(e,Be,!1),y=tl(e,a),I=D(()=>e.link!==!1&&y.isLink.value),A=D(()=>!e.disabled&&e.link!==!1&&(!!t||e.link||y.isClickable.value)),R=D(()=>({"aria-label":f(e.closeLabel),onClick(g){g.stopPropagation(),S.value=!1,r("click:close",g)}}));function K(g){var F;r("click",g),A.value&&((F=y.navigate)==null||F.call(y,g),t==null||t.toggle())}function E(g){(g.key==="Enter"||g.key===" ")&&(g.preventDefault(),K(g))}return()=>{const g=y.isLink.value?"a":e.tag,F=!!(e.appendIcon||e.appendAvatar),H=!!(F||l.append),z=!!(l.close||e.closable),U=!!(l.filter||e.filter)&&t,O=!!(e.prependIcon||e.prependAvatar),Z=!!(O||l.prepend),N=!t||t.isSelected.value;return S.value&&he(o(g,{class:["v-chip",{"v-chip--disabled":e.disabled,"v-chip--label":e.label,"v-chip--link":A.value,"v-chip--filter":U,"v-chip--pill":e.pill},k.value,V.value,N?i.value:void 0,w.value,T.value,d.value,C.value,h.value,t==null?void 0:t.selectedClass.value,e.class],style:[N?n.value:void 0,e.style],disabled:e.disabled||void 0,draggable:e.draggable,href:y.href.value,tabindex:A.value?0:void 0,onClick:K,onKeydown:A.value&&!I.value&&E},{default:()=>{var L;return[ol(A.value,"v-chip"),U&&o(sl,{key:"filter"},{default:()=>[he(o("div",{class:"v-chip__filter"},[l.filter?o(le,{key:"filter-defaults",disabled:!e.filterIcon,defaults:{VIcon:{icon:e.filterIcon}}},l.filter):o(W,{key:"filter-icon",icon:e.filterIcon},null)]),[[ul,t.isSelected.value]])]}),Z&&o("div",{key:"prepend",class:"v-chip__prepend"},[l.prepend?o(le,{key:"prepend-defaults",disabled:!O,defaults:{VAvatar:{image:e.prependAvatar,start:!0},VIcon:{icon:e.prependIcon,start:!0}}},l.prepend):o(X,null,[e.prependIcon&&o(W,{key:"prepend-icon",icon:e.prependIcon,start:!0},null),e.prependAvatar&&o(pe,{key:"prepend-avatar",image:e.prependAvatar,start:!0},null)])]),o("div",{class:"v-chip__content"},[((L=l.default)==null?void 0:L.call(l,{isSelected:t==null?void 0:t.isSelected.value,selectedClass:t==null?void 0:t.selectedClass.value,select:t==null?void 0:t.select,toggle:t==null?void 0:t.toggle,value:t==null?void 0:t.value.value,disabled:e.disabled}))??e.text]),H&&o("div",{key:"append",class:"v-chip__append"},[l.append?o(le,{key:"append-defaults",disabled:!F,defaults:{VAvatar:{end:!0,image:e.appendAvatar},VIcon:{end:!0,icon:e.appendIcon}}},l.append):o(X,null,[e.appendIcon&&o(W,{key:"append-icon",end:!0,icon:e.appendIcon},null),e.appendAvatar&&o(pe,{key:"append-avatar",end:!0,image:e.appendAvatar},null)])]),z&&o("div",M({key:"close",class:"v-chip__close"},R.value),[l.close?o(le,{key:"close-defaults",defaults:{VIcon:{icon:e.closeIcon,size:"x-small"}}},l.close):o(W,{key:"close-icon",icon:e.closeIcon,size:"x-small"},null)])]}}),[[nl("ripple"),A.value&&e.ripple,null]])}}});const _l=q({renderless:Boolean,...se()},"VVirtualScrollItem"),Fl=Y()({name:"VVirtualScrollItem",inheritAttrs:!1,props:_l(),emits:{"update:height":e=>!0},setup(e,v){let{attrs:a,emit:r,slots:l}=v;const{resizeRef:f,contentRect:V}=xe(void 0,"border");Q(()=>{var i;return(i=V.value)==null?void 0:i.height},i=>{i!=null&&r("update:height",i)}),ae(()=>{var i,n;return e.renderless?o(X,null,[(i=l.default)==null?void 0:i.call(l,{itemRef:f})]):o("div",M({ref:f,class:["v-virtual-scroll__item",e.class],style:e.style},a),[(n=l.default)==null?void 0:n.call(l)])})}}),Ll=-1,El=1,ce=100,Ol=q({itemHeight:{type:[Number,String],default:null},height:[Number,String]},"virtual");function Ml(e,v){const a=il(),r=$(0);ge(()=>{r.value=parseFloat(e.itemHeight||0)});const l=$(0),f=$(Math.ceil((parseInt(e.height)||a.height.value)/(r.value||16))||1),V=$(0),i=$(0),n=J(),h=J();let w=0;const{resizeRef:T,contentRect:d}=xe();ge(()=>{T.value=n.value});const C=D(()=>{var u;return n.value===document.documentElement?a.height.value:((u=d.value)==null?void 0:u.height)||parseInt(e.height)||0}),k=D(()=>!!(n.value&&h.value&&C.value&&r.value));let S=Array.from({length:v.value.length}),t=Array.from({length:v.value.length});const y=$(0);let I=-1;function A(u){return S[u]||r.value}const R=cl(()=>{const u=performance.now();t[0]=0;const p=v.value.length;for(let P=1;P<=p-1;P++)t[P]=(t[P-1]||0)+A(P-1);y.value=Math.max(y.value,performance.now()-u)},y),K=Q(k,u=>{u&&(K(),w=h.value.offsetTop,R.immediate(),L(),~I&&rl(()=>{Ae&&window.requestAnimationFrame(()=>{s(I),I=-1})}))});Q(C,(u,p)=>{p&&L()}),Te(()=>{R.clear()});function E(u,p){const P=S[u],c=r.value;r.value=c?Math.min(r.value,p):p,(P!==p||c!==r.value)&&(S[u]=p,R())}function g(u){return u=ie(u,0,v.value.length-1),t[u]||0}function F(u){return Hl(t,u)}let H=0,z=0,U=0;function O(){if(!n.value||!h.value)return;const u=n.value.scrollTop,p=performance.now();p-U>500?(z=Math.sign(u-H),w=h.value.offsetTop):z=u-H,H=u,U=p,L()}function Z(){!n.value||!h.value||(z=0,U=0,L())}let N=-1;function L(){cancelAnimationFrame(N),N=requestAnimationFrame(ue)}function ue(){if(!n.value||!C.value)return;const u=H-w,p=Math.sign(z),P=Math.max(0,u-ce),c=ie(F(P),0,v.value.length),x=u+C.value+ce,b=ie(F(x)+1,c+1,v.value.length);if((p!==Ll||c<l.value)&&(p!==El||b>f.value)){const _=g(l.value)-g(c),B=g(b)-g(f.value);Math.max(_,B)>ce?(l.value=c,f.value=b):(c<=0&&(l.value=c),b>=v.value.length&&(f.value=b))}V.value=g(l.value),i.value=g(v.value.length)-g(f.value)}function s(u){const p=g(u);!n.value||u&&!p?I=u:n.value.scrollTop=p}const m=D(()=>v.value.slice(l.value,f.value).map((u,p)=>({raw:u,index:p+l.value})));return Q(v,()=>{S=Array.from({length:v.value.length}),t=Array.from({length:v.value.length}),R.immediate(),L()},{deep:!0}),{containerRef:n,markerRef:h,computedItems:m,paddingTop:V,paddingBottom:i,scrollToIndex:s,handleScroll:O,handleScrollend:Z,handleItemResize:E}}function Hl(e,v){let a=e.length-1,r=0,l=0,f=null,V=-1;if(e[a]<v)return a;for(;r<=a;)if(l=r+a>>1,f=e[l],f>v)a=l-1;else if(f<v)V=l,r=l+1;else return f===v?l:r;return V}const zl=q({items:{type:Array,default:()=>[]},renderless:Boolean,...Ol(),...se(),...dl()},"VVirtualScroll"),Ul=Y()({name:"VVirtualScroll",props:zl(),setup(e,v){let{slots:a}=v;const r=vl("VVirtualScroll"),{dimensionStyles:l}=fl(e),{containerRef:f,markerRef:V,handleScroll:i,handleScrollend:n,handleItemResize:h,scrollToIndex:w,paddingTop:T,paddingBottom:d,computedItems:C}=Ml(e,ee(e,"items"));return ml(()=>e.renderless,()=>{function k(){var y,I;const t=(arguments.length>0&&arguments[0]!==void 0?arguments[0]:!1)?"addEventListener":"removeEventListener";f.value===document.documentElement?(document[t]("scroll",i,{passive:!0}),document[t]("scrollend",n)):((y=f.value)==null||y[t]("scroll",i,{passive:!0}),(I=f.value)==null||I[t]("scrollend",n))}hl(()=>{f.value=pl(r.vnode.el,!0),k(!0)}),Te(k)}),ae(()=>{const k=C.value.map(S=>o(Fl,{key:S.index,renderless:e.renderless,"onUpdate:height":t=>h(S.index,t)},{default:t=>{var y;return(y=a.default)==null?void 0:y.call(a,{item:S.raw,index:S.index,...t})}}));return e.renderless?o(X,null,[o("div",{ref:V,class:"v-virtual-scroll__spacer",style:{paddingTop:te(T.value)}},null),k,o("div",{class:"v-virtual-scroll__spacer",style:{paddingBottom:te(d.value)}},null)]):o("div",{ref:f,class:["v-virtual-scroll",e.class],onScrollPassive:i,onScrollend:n,style:[l.value,e.style]},[o("div",{ref:V,class:"v-virtual-scroll__container",style:{paddingTop:te(T.value),paddingBottom:te(d.value)}},[k])])}),{scrollToIndex:w}}});function $l(e,v){const a=$(!1);let r;function l(i){cancelAnimationFrame(r),a.value=!0,r=requestAnimationFrame(()=>{r=requestAnimationFrame(()=>{a.value=!1})})}async function f(){await new Promise(i=>requestAnimationFrame(i)),await new Promise(i=>requestAnimationFrame(i)),await new Promise(i=>requestAnimationFrame(i)),await new Promise(i=>{if(a.value){const n=Q(a,()=>{n(),i()})}else i()})}async function V(i){var w,T;if(i.key==="Tab"&&((w=v.value)==null||w.focus()),!["PageDown","PageUp","Home","End"].includes(i.key))return;const n=(T=e.value)==null?void 0:T.$el;if(!n)return;(i.key==="Home"||i.key==="End")&&n.scrollTo({top:i.key==="Home"?0:n.scrollHeight,behavior:"smooth"}),await f();const h=n.querySelectorAll(":scope > :not(.v-virtual-scroll__spacer)");if(i.key==="PageDown"||i.key==="Home"){const d=n.getBoundingClientRect().top;for(const C of h)if(C.getBoundingClientRect().top>=d){C.focus();break}}else{const d=n.getBoundingClientRect().bottom;for(const C of[...h].reverse())if(C.getBoundingClientRect().bottom<=d){C.focus();break}}}return{onListScroll:l,onListKeydown:V}}const ql=q({chips:Boolean,closableChips:Boolean,closeText:{type:String,default:"$vuetify.close"},openText:{type:String,default:"$vuetify.open"},eager:Boolean,hideNoData:Boolean,hideSelected:Boolean,menu:Boolean,menuIcon:{type:ne,default:"$dropdown"},menuProps:{type:Object},multiple:Boolean,noDataText:{type:String,default:"$vuetify.noDataText"},openOnClear:Boolean,itemColor:String,...gl({itemChildren:!1})},"Select"),Kl=q({...ql(),...ke(yl({modelValue:null,role:"button"}),["validationValue","dirty","appendInnerIcon"]),...bl({transition:{component:Vl}})},"VSelect"),Xl=Y()({name:"VSelect",props:Kl(),emits:{"update:focused":e=>!0,"update:modelValue":e=>!0,"update:menu":e=>!0},setup(e,v){let{slots:a}=v;const{t:r}=we(),l=J(),f=J(),V=J(),i=oe(e,"menu"),n=D({get:()=>i.value,set:s=>{var m;i.value&&!s&&((m=f.value)!=null&&m.ΨopenChildren)||(i.value=s)}}),{items:h,transformIn:w,transformOut:T}=kl(e),d=oe(e,"modelValue",[],s=>w(s===null?[null]:Tl(s)),s=>{const m=T(s);return e.multiple?m:m[0]??null}),C=D(()=>typeof e.counterValue=="function"?e.counterValue(d.value):typeof e.counterValue=="number"?e.counterValue:d.value.length),k=Cl(),S=D(()=>d.value.map(s=>s.value)),t=$(!1),y=D(()=>n.value?e.closeText:e.openText);let I="",A;const R=D(()=>e.hideSelected?h.value.filter(s=>!d.value.some(m=>m===s)):h.value),K=D(()=>e.hideNoData&&!h.value.length||e.readonly||(k==null?void 0:k.isReadonly.value)),E=J(),{onListScroll:g,onListKeydown:F}=$l(E,l);function H(s){e.openOnClear&&(n.value=!0)}function z(){K.value||(n.value=!n.value)}function U(s){var c,x;if(!s.key||e.readonly||k!=null&&k.isReadonly.value)return;["Enter"," ","ArrowDown","ArrowUp","Home","End"].includes(s.key)&&s.preventDefault(),["Enter","ArrowDown"," "].includes(s.key)&&(n.value=!0),["Escape","Tab"].includes(s.key)&&(n.value=!1),s.key==="Home"?(c=E.value)==null||c.focus("first"):s.key==="End"&&((x=E.value)==null||x.focus("last"));const m=1e3;function u(b){const _=b.key.length===1,B=!b.ctrlKey&&!b.metaKey&&!b.altKey;return _&&B}if(e.multiple||!u(s))return;const p=performance.now();p-A>m&&(I=""),I+=s.key.toLowerCase(),A=p;const P=h.value.find(b=>b.title.toLowerCase().startsWith(I));P!==void 0&&(d.value=[P])}function O(s){if(e.multiple){const m=d.value.findIndex(u=>e.valueComparator(u.value,s.value));if(m===-1)d.value=[...d.value,s];else{const u=[...d.value];u.splice(m,1),d.value=u}}else d.value=[s],n.value=!1}function Z(s){var m;(m=E.value)!=null&&m.$el.contains(s.relatedTarget)||(n.value=!1)}function N(){var s;t.value&&((s=l.value)==null||s.focus())}function L(s){t.value=!0}function ue(s){if(s==null)d.value=[];else if(Ve(l.value,":autofill")||Ve(l.value,":-webkit-autofill")){const m=h.value.find(u=>u.title===s);m&&O(m)}else l.value&&(l.value.value="")}return Q(n,()=>{if(!e.hideSelected&&n.value&&d.value.length){const s=R.value.findIndex(m=>d.value.some(u=>e.valueComparator(u.value,m.value)));Ae&&window.requestAnimationFrame(()=>{var m;s>=0&&((m=V.value)==null||m.scrollToIndex(s))})}}),ae(()=>{const s=!!(e.chips||a.chip),m=!!(!e.hideNoData||R.value.length||a["prepend-item"]||a["append-item"]||a["no-data"]),u=d.value.length>0,p=ye.filterProps(e),P=u||!t.value&&e.label&&!e.persistentPlaceholder?void 0:e.placeholder;return o(ye,M({ref:l},p,{modelValue:d.value.map(c=>c.props.value).join(", "),"onUpdate:modelValue":ue,focused:t.value,"onUpdate:focused":c=>t.value=c,validationValue:d.externalValue,counterValue:C.value,dirty:u,class:["v-select",{"v-select--active-menu":n.value,"v-select--chips":!!e.chips,[`v-select--${e.multiple?"multiple":"single"}`]:!0,"v-select--selected":d.value.length,"v-select--selection-slot":!!a.selection},e.class],style:e.style,inputmode:"none",placeholder:P,"onClick:clear":H,"onMousedown:control":z,onBlur:Z,onKeydown:U,"aria-label":r(y.value),title:r(y.value)}),{...a,default:()=>o(X,null,[o(Sl,M({ref:f,modelValue:n.value,"onUpdate:modelValue":c=>n.value=c,activator:"parent",contentClass:"v-select__content",disabled:K.value,eager:e.eager,maxHeight:310,openOnClick:!1,closeOnContentClick:!1,transition:e.transition,onAfterLeave:N},e.menuProps),{default:()=>[m&&o(Il,{ref:E,selected:S.value,selectStrategy:e.multiple?"independent":"single-independent",onMousedown:c=>c.preventDefault(),onKeydown:F,onFocusin:L,onScrollPassive:g,tabindex:"-1",color:e.itemColor??e.color},{default:()=>{var c,x,b;return[(c=a["prepend-item"])==null?void 0:c.call(a),!R.value.length&&!e.hideNoData&&(((x=a["no-data"])==null?void 0:x.call(a))??o(be,{title:r(e.noDataText)},null)),o(Ul,{ref:V,renderless:!0,items:R.value},{default:_=>{var ve;let{item:B,index:G,itemRef:j}=_;const de=M(B.props,{ref:j,key:G,onClick:()=>O(B)});return((ve=a.item)==null?void 0:ve.call(a,{item:B,index:G,props:de}))??o(be,M(de,{role:"option"}),{prepend:De=>{let{isSelected:Re}=De;return o(X,null,[e.multiple&&!e.hideSelected?o(re,{key:B.value,modelValue:Re,ripple:!1,tabindex:"-1"},null):void 0,B.props.prependIcon&&o(W,{icon:B.props.prependIcon},null)])}})}}),(b=a["append-item"])==null?void 0:b.call(a)]}})]}),d.value.map((c,x)=>{function b(j){j.stopPropagation(),j.preventDefault(),O(c)}const _={"onClick:close":b,onMousedown(j){j.preventDefault(),j.stopPropagation()},modelValue:!0,"onUpdate:modelValue":void 0},B=s?!!a.chip:!!a.selection,G=B?Pl(s?a.chip({item:c,index:x,props:_}):a.selection({item:c,index:x})):void 0;if(!(B&&!G))return o("div",{key:c.value,class:"v-select__selection"},[s?a.chip?o(le,{key:"chip-defaults",defaults:{VChip:{closable:e.closableChips,size:"small",text:c.title}}},{default:()=>[G]}):o(Rl,M({key:"chip",closable:e.closableChips,size:"small",text:c.title,disabled:c.props.disabled},_),null):G??o("span",{class:"v-select__selection-text"},[c.title,e.multiple&&x<d.value.length-1&&o("span",{class:"v-select__selection-comma"},[wl(",")])])])})]),"append-inner":function(){var _;for(var c=arguments.length,x=new Array(c),b=0;b<c;b++)x[b]=arguments[b];return o(X,null,[(_=a["append-inner"])==null?void 0:_.call(a,...x),e.menuIcon?o(W,{class:"v-select__menu-icon",icon:e.menuIcon},null):void 0])}})}),xl({isFocused:t,menu:n,select:O},l)}});export{Xl as V,jl as a,Ul as b,Rl as c,ql as m,$l as u};
