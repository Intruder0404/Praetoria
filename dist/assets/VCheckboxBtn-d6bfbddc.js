import{y as I,au as B,aR as L,aw as _,ax as W,aC as Z,B as F,C as g,b9 as N,E as o,aM as z,bp as J,aH as Q,aK as i,N as A,b as d,be as X,H as $,G as Y,O as p,S as P,T as ee,U as le,F as ae,ao as te,bC as ne,aN as oe,a_ as ue,ae as x,al as ie,aW as re,as as ce,Z as se,ag as de}from"./index-0a3ee73f.js";const E=Symbol.for("vuetify:selection-control-group"),H=I({color:String,disabled:{type:Boolean,default:null},defaultsTarget:String,error:Boolean,id:String,inline:Boolean,falseIcon:B,trueIcon:B,ripple:{type:Boolean,default:!0},multiple:{type:Boolean,default:null},name:String,readonly:{type:Boolean,default:null},modelValue:null,type:String,valueComparator:{type:Function,default:L},..._(),...W(),...Z()},"SelectionControlGroup"),ve=I({...H({defaultsTarget:"VSelectionControl"})},"VSelectionControlGroup");F()({name:"VSelectionControlGroup",props:ve(),emits:{"update:modelValue":e=>!0},setup(e,u){let{slots:c}=u;const l=g(e,"modelValue"),t=N(),v=o(()=>e.id||`v-selection-control-group-${t}`),r=o(()=>e.name||v.value),a=new Set;return z(E,{modelValue:l,forceUpdate:()=>{a.forEach(n=>n())},onForceUpdate:n=>{a.add(n),J(()=>{a.delete(n)})}}),Q({[e.defaultsTarget]:{color:i(e,"color"),disabled:i(e,"disabled"),density:i(e,"density"),error:i(e,"error"),inline:i(e,"inline"),modelValue:l,multiple:o(()=>!!e.multiple||e.multiple==null&&Array.isArray(l.value)),name:r,falseIcon:i(e,"falseIcon"),trueIcon:i(e,"trueIcon"),readonly:i(e,"readonly"),ripple:i(e,"ripple"),type:i(e,"type"),valueComparator:i(e,"valueComparator")}}),A(()=>{var n;return d("div",{class:["v-selection-control-group",{"v-selection-control-group--inline":e.inline},e.class],style:e.style,role:e.type==="radio"?"radiogroup":void 0},[(n=c.default)==null?void 0:n.call(c)])}),{}}});const M=I({label:String,baseColor:String,trueValue:null,falseValue:null,value:null,..._(),...H()},"VSelectionControl");function fe(e){const u=oe(E,void 0),{densityClasses:c}=ue(e),l=g(e,"modelValue"),t=o(()=>e.trueValue!==void 0?e.trueValue:e.value!==void 0?e.value:!0),v=o(()=>e.falseValue!==void 0?e.falseValue:!1),r=o(()=>!!e.multiple||e.multiple==null&&Array.isArray(l.value)),a=o({get(){const m=u?u.modelValue.value:l.value;return r.value?x(m).some(s=>e.valueComparator(s,t.value)):e.valueComparator(m,t.value)},set(m){if(e.readonly)return;const s=m?t.value:v.value;let f=s;r.value&&(f=m?[...x(l.value),s]:x(l.value).filter(b=>!e.valueComparator(b,t.value))),u?u.modelValue.value=f:l.value=f}}),{textColorClasses:n,textColorStyles:y}=ie(o(()=>{if(!(e.error||e.disabled))return a.value?e.color:e.baseColor})),{backgroundColorClasses:V,backgroundColorStyles:k}=re(o(()=>a.value&&!e.error&&!e.disabled?e.color:void 0)),h=o(()=>a.value?e.trueIcon:e.falseIcon);return{group:u,densityClasses:c,trueValue:t,falseValue:v,model:a,textColorClasses:n,textColorStyles:y,backgroundColorClasses:V,backgroundColorStyles:k,icon:h}}const R=F()({name:"VSelectionControl",directives:{Ripple:X},inheritAttrs:!1,props:M(),emits:{"update:modelValue":e=>!0},setup(e,u){let{attrs:c,slots:l}=u;const{group:t,densityClasses:v,icon:r,model:a,textColorClasses:n,textColorStyles:y,backgroundColorClasses:V,backgroundColorStyles:k,trueValue:h}=fe(e),m=N(),s=o(()=>e.id||`input-${m}`),f=$(!1),b=$(!1),S=Y();t==null||t.onForceUpdate(()=>{S.value&&(S.value.checked=a.value)});function G(C){f.value=!0,ce(C.target,":focus-visible")!==!1&&(b.value=!0)}function w(){f.value=!1,b.value=!1}function O(C){e.readonly&&t&&se(()=>t.forceUpdate()),a.value=C.target.checked}return A(()=>{var U,D;const C=l.label?l.label({label:e.label,props:{for:s.value}}):e.label,[j,q]=p(c),T=d("input",P({ref:S,checked:a.value,disabled:!!(e.readonly||e.disabled),id:s.value,onBlur:w,onFocus:G,onInput:O,"aria-disabled":!!(e.readonly||e.disabled),type:e.type,value:h.value,name:e.name,"aria-checked":e.type==="checkbox"?a.value:void 0},q),null);return d("div",P({class:["v-selection-control",{"v-selection-control--dirty":a.value,"v-selection-control--disabled":e.disabled,"v-selection-control--error":e.error,"v-selection-control--focused":f.value,"v-selection-control--focus-visible":b.value,"v-selection-control--inline":e.inline},v.value,e.class]},j,{style:e.style}),[d("div",{class:["v-selection-control__wrapper",n.value],style:y.value},[(U=l.default)==null?void 0:U.call(l,{backgroundColorClasses:V,backgroundColorStyles:k}),ee(d("div",{class:["v-selection-control__input"]},[((D=l.input)==null?void 0:D.call(l,{model:a,textColorClasses:n,textColorStyles:y,backgroundColorClasses:V,backgroundColorStyles:k,inputNode:T,icon:r.value,props:{onFocus:G,onBlur:w,id:s.value}}))??d(ae,null,[r.value&&d(te,{key:"icon",icon:r.value},null),T])]),[[le("ripple"),e.ripple&&[!e.disabled&&!e.readonly,null,["center","circle"]]]])]),C&&d(ne,{for:s.value,clickable:!0,onClick:K=>K.stopPropagation()},{default:()=>[C]})])}),{isFocused:f,input:S}}}),me=I({indeterminate:Boolean,indeterminateIcon:{type:B,default:"$checkboxIndeterminate"},...M({falseIcon:"$checkboxOff",trueIcon:"$checkboxOn"})},"VCheckboxBtn"),Ce=F()({name:"VCheckboxBtn",props:me(),emits:{"update:modelValue":e=>!0,"update:indeterminate":e=>!0},setup(e,u){let{slots:c}=u;const l=g(e,"indeterminate"),t=g(e,"modelValue");function v(n){l.value&&(l.value=!1)}const r=o(()=>l.value?e.indeterminateIcon:e.falseIcon),a=o(()=>l.value?e.indeterminateIcon:e.trueIcon);return A(()=>{const n=de(R.filterProps(e),["modelValue"]);return d(R,P(n,{modelValue:t.value,"onUpdate:modelValue":[y=>t.value=y,v],class:["v-checkbox-btn",e.class],style:e.style,type:"checkbox",falseIcon:r.value,trueIcon:a.value,"aria-checked":l.value?"mixed":void 0}),c)}),{}}});export{Ce as V,me as m};
