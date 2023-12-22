import{bi as y,a0 as p,bf as f,a1 as v,bh as b,N as g,P as o,Q as u,a5 as q,R as r,j as a,X as U,a4 as A,bj as C,a6 as R,a7 as t,ar as d,as as i,S as F,T,F as N,a8 as S,V as E,a3 as h}from"./index-d802a291.js";import{a as B,V as n}from"./VSelect-c7e49d46.js";import"./VCheckboxBtn-6b1c1368.js";const P={name:"App",components:{vtoast:y},data(){return{valid:!0,itemsPerPage:5,loading:!1,verify:null,showPass:!1,family:null,rules:{required:e=>!!e||"Required.",min:e=>e&&e.length>=8||"Min 8 characters"},loginEmailRules:[e=>!!e||"Required",e=>/.+@.+\..+/.test(e)||"E-mail must be valid"],emailRules:[e=>!!e||"Required",e=>/.+@.+\..+/.test(e)||"E-mail must be valid"]}},mounted(){this.$root.vtoast=this.$refs.vtoast},computed:{...p(f,["user","isAuthenticated"]),...p(v,["options"])},methods:{...b(f,["updateUser"]),...b(v,["fetchAll"]),validate(){this.updateUser().then(()=>{this.fetchAll()})},test(e){alert(e)}}};function c(e,s,j,w,m,k){return r(),o(q,{class:"px-4"},{default:u(()=>[a(A,null,{default:u(()=>[U(" Account Modification ")]),_:1}),a(h,null,{default:u(()=>[a(C,{ref:"registerForm",modelValue:m.valid,"onUpdate:modelValue":s[7]||(s[7]=l=>m.valid=l),"lazy-validation":""},{default:u(()=>[a(R,null,{default:u(()=>[a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.username,"onUpdate:modelValue":s[0]||(s[0]=l=>e.user.username=l),rules:[m.rules.required],label:"User Account",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(B,{modelValue:e.user.isActive,"onUpdate:modelValue":s[1]||(s[1]=l=>e.user.isActive=l),label:"Active"},null,8,["modelValue"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.first_name,"onUpdate:modelValue":s[2]||(s[2]=l=>e.user.first_name=l),rules:[m.rules.required],label:"First Name",maxlength:"20",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.last_name,"onUpdate:modelValue":s[3]||(s[3]=l=>e.user.last_name=l),rules:[m.rules.required],label:"Last Name",maxlength:"20",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12"},{default:u(()=>[a(d,{modelValue:e.user.email,"onUpdate:modelValue":s[4]||(s[4]=l=>e.user.email=l),rules:m.emailRules,label:"E-mail",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[e.user.user_type.name==="admin"?(r(),o(n,{key:0,modelValue:e.user.type,"onUpdate:modelValue":s[5]||(s[5]=l=>e.user.type=l),items:e.options.userTypes,label:"User Type","item-title":"name","item-value":"id"},null,8,["modelValue","items"])):i("",!0)]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[e.user.user_type.name==="admin"?(r(),o(n,{key:0,modelValue:e.user.user_rank,"onUpdate:modelValue":s[6]||(s[6]=l=>e.user.user_rank=l),items:e.options.ranks,label:"Rank","item-title":"name","item-value":"id","return-object":!0},null,8,["modelValue","items"])):i("",!0)]),_:1}),(r(!0),F(N,null,T(e.user.attribute_values,l=>(r(),o(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[l.attribute.name==="Family"?(r(),o(n,{key:0,modelValue:l.value.value,"onUpdate:modelValue":V=>l.value.value=V,items:e.options.families,label:l.attribute.name,"item-title":"name","item-value":"id"},null,8,["modelValue","onUpdate:modelValue","items","label"])):i("",!0),l.attribute.name==="Religion"?(r(),o(n,{key:1,modelValue:l.value.value,"onUpdate:modelValue":V=>l.value.value=V,modelModifiers:{number:!0},items:e.options.religions,label:l.attribute.name,"item-title":"name","item-value":"id"},null,8,["modelValue","onUpdate:modelValue","items","label"])):i("",!0)]),_:2},1024))),256)),a(S),a(t,{class:"d-flex ml-auto",cols:"12",sm:"3",xsm:"12"},{default:u(()=>[a(E,{"x-large":"",block:"",color:"success",onClick:k.validate},{default:u(()=>[U("Change")]),_:1},8,["onClick"])]),_:1})]),_:1})]),_:1},8,["modelValue"])]),_:1})]),_:1})}const Q=g(P,[["render",c]]);export{Q as default};
