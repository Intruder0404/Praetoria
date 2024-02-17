import{b7 as y,m as p,b4 as f,h as b,b6 as v,a as g,c as r,w as u,l as q,o as m,b as a,d as k,n as A,b8 as C,a3 as R,a4 as t,a5 as d,a6 as i,j as F,k as T,F as E,u as N,V as S,i as c}from"./index-80ebc5db.js";import{a as h,V as n}from"./VSelect-d624c5e0.js";import"./VCheckboxBtn-c91bbf5d.js";const w={name:"App",components:{vtoast:y},data(){return{valid:!0,itemsPerPage:5,loading:!1,verify:null,showPass:!1,family:null,rules:{required:e=>!!e||"Required.",min:e=>e&&e.length>=8||"Min 8 characters"},loginEmailRules:[e=>!!e||"Required",e=>/.+@.+\..+/.test(e)||"E-mail must be valid"],emailRules:[e=>!!e||"Required",e=>/.+@.+\..+/.test(e)||"E-mail must be valid"]}},mounted(){this.$root.vtoast=this.$refs.vtoast},computed:{...p(f,["user","isAuthenticated"]),...p(b,["options"])},methods:{...v(f,["updateUser"]),...v(b,["fetchAll"]),validate(){this.updateUser().then(()=>{this.fetchAll()})},test(e){alert(e)}}};function B(e,s,M,P,o,U){return m(),r(q,{class:"px-4"},{default:u(()=>[a(A,null,{default:u(()=>[k(" Account Modification ")]),_:1}),a(c,null,{default:u(()=>[a(C,{ref:"registerForm",modelValue:o.valid,"onUpdate:modelValue":s[7]||(s[7]=l=>o.valid=l),"lazy-validation":""},{default:u(()=>[a(R,null,{default:u(()=>[a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.username,"onUpdate:modelValue":s[0]||(s[0]=l=>e.user.username=l),rules:[o.rules.required],label:"User Account",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(h,{modelValue:e.user.isActive,"onUpdate:modelValue":s[1]||(s[1]=l=>e.user.isActive=l),label:"Active"},null,8,["modelValue"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.first_name,"onUpdate:modelValue":s[2]||(s[2]=l=>e.user.first_name=l),rules:[o.rules.required],label:"First Name",maxlength:"20",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[a(d,{modelValue:e.user.last_name,"onUpdate:modelValue":s[3]||(s[3]=l=>e.user.last_name=l),rules:[o.rules.required],label:"Last Name",maxlength:"20",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12"},{default:u(()=>[a(d,{modelValue:e.user.email,"onUpdate:modelValue":s[4]||(s[4]=l=>e.user.email=l),rules:o.emailRules,label:"E-mail",required:""},null,8,["modelValue","rules"])]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[e.user.user_type.name==="admin"?(m(),r(n,{key:0,modelValue:e.user.type,"onUpdate:modelValue":s[5]||(s[5]=l=>e.user.type=l),items:e.options.userTypes,label:"User Type","item-title":"name","item-value":"id"},null,8,["modelValue","items"])):i("",!0)]),_:1}),a(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[e.user.user_type.name==="admin"?(m(),r(n,{key:0,modelValue:e.user.user_rank,"onUpdate:modelValue":s[6]||(s[6]=l=>e.user.user_rank=l),items:e.options.ranks,label:"Rank","item-title":"name","item-value":"id","return-object":!0},null,8,["modelValue","items"])):i("",!0)]),_:1}),(m(!0),F(E,null,T(e.user.attribute_values,l=>(m(),r(t,{cols:"12",sm:"6",md:"6"},{default:u(()=>[l.attribute.name==="Family"?(m(),r(n,{key:0,modelValue:l.value.value,"onUpdate:modelValue":V=>l.value.value=V,items:e.options.families,label:l.attribute.name,"item-title":"name","item-value":"id"},null,8,["modelValue","onUpdate:modelValue","items","label"])):i("",!0),l.attribute.name==="Religion"?(m(),r(n,{key:1,modelValue:l.value.value,"onUpdate:modelValue":V=>l.value.value=V,modelModifiers:{number:!0},items:e.options.religions,label:l.attribute.name,"item-title":"name","item-value":"id"},null,8,["modelValue","onUpdate:modelValue","items","label"])):i("",!0)]),_:2},1024))),256)),a(N),a(t,{class:"d-flex ml-auto",cols:"12",sm:"3",xsm:"12"},{default:u(()=>[a(S,{"x-large":"",block:"",color:"success",onClick:U.validate},{default:u(()=>[k("Change")]),_:1},8,["onClick"])]),_:1})]),_:1})]),_:1},8,["modelValue"])]),_:1})]),_:1})}const D=g(w,[["render",B]]);export{D as default};