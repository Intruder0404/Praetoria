import{a as i,j as m,b as o,w as t,bx as u,o as f,b8 as c,aY as p,a5 as l,V,d as n,f as r}from"./index-0a3ee73f.js";const w={data(){return{username:"",password:"",confirmPassword:""}},methods:{login(){}}},b={class:"d-flex align-center justify-center",style:{height:"100vh"}},x=r("div",{class:"mt-2"},[r("p",{class:"text-body-2"},[n("Don't have an account? "),r("a",{href:"/registration"},"Sign Up")])],-1);function _(g,e,h,v,s,d){return f(),m("div",b,[o(u,{width:"400",class:"mx-auto"},{default:t(()=>[o(c,{"fast-fail":"",onSubmit:p(d.login,["prevent"])},{default:t(()=>[o(l,{modelValue:s.username,"onUpdate:modelValue":e[0]||(e[0]=a=>s.username=a),label:"User Name"},null,8,["modelValue"]),o(l,{modelValue:s.password,"onUpdate:modelValue":e[1]||(e[1]=a=>s.password=a),label:"Password"},null,8,["modelValue"]),o(l,{modelValue:s.confirmPassword,"onUpdate:modelValue":e[2]||(e[2]=a=>s.confirmPassword=a),label:"Confirm Password"},null,8,["modelValue"]),o(V,{to:"/home",type:"submit",color:"primary",block:"",class:"mt-2"},{default:t(()=>[n("Sign in")]),_:1})]),_:1},8,["onSubmit"]),x]),_:1})])}const P=i(w,[["render",_]]);export{P as default};
