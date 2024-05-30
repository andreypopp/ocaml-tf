(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type translations = {
  language : string prop;
  template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : translations) -> ()

let yojson_of_translations =
  (function
   | { language = v_language; template = v_template } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template in
         ("template", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language in
         ("language", arg) :: bnds
       in
       `Assoc bnds
    : translations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_translations

[@@@deriving.end]

type okta_template_sms = {
  id : string prop option; [@option]
  template : string prop;
  type_ : string prop; [@key "type"]
  translations : translations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_template_sms) -> ()

let yojson_of_okta_template_sms =
  (function
   | {
       id = v_id;
       template = v_template;
       type_ = v_type_;
       translations = v_translations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_translations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_translations) v_translations
           in
           let bnd = "translations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template in
         ("template", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_template_sms -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_template_sms

[@@@deriving.end]

let translations ~language ~template () : translations =
  { language; template }

let okta_template_sms ?id ~template ~type_ ~translations () :
    okta_template_sms =
  { id; template; type_; translations }

type t = {
  tf_name : string;
  id : string prop;
  template : string prop;
  type_ : string prop;
}

let make ?id ~template ~type_ ~translations __id =
  let __type = "okta_template_sms" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       template = Prop.computed __type __id "template";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_template_sms
        (okta_template_sms ?id ~template ~type_ ~translations ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~template ~type_ ~translations __id =
  let (r : _ Tf_core.resource) =
    make ?id ~template ~type_ ~translations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
