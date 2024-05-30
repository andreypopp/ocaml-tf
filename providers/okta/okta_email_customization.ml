(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_email_customization = {
  body : string prop option; [@option]
  brand_id : string prop;
  force_is_default : string prop option; [@option]
  is_default : bool prop option; [@option]
  language : string prop option; [@option]
  subject : string prop option; [@option]
  template_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_customization) -> ()

let yojson_of_okta_email_customization =
  (function
   | {
       body = v_body;
       brand_id = v_brand_id;
       force_is_default = v_force_is_default;
       is_default = v_is_default;
       language = v_language;
       subject = v_subject;
       template_name = v_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template_name in
         ("template_name", arg) :: bnds
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_is_default", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand_id in
         ("brand_id", arg) :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_email_customization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_customization

[@@@deriving.end]

let okta_email_customization ?body ?force_is_default ?is_default
    ?language ?subject ~brand_id ~template_name () :
    okta_email_customization =
  {
    body;
    brand_id;
    force_is_default;
    is_default;
    language;
    subject;
    template_name;
  }

type t = {
  tf_name : string;
  body : string prop;
  brand_id : string prop;
  force_is_default : string prop;
  id : string prop;
  is_default : bool prop;
  language : string prop;
  links : string prop;
  subject : string prop;
  template_name : string prop;
}

let make ?body ?force_is_default ?is_default ?language ?subject
    ~brand_id ~template_name __id =
  let __type = "okta_email_customization" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       brand_id = Prop.computed __type __id "brand_id";
       force_is_default =
         Prop.computed __type __id "force_is_default";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       language = Prop.computed __type __id "language";
       links = Prop.computed __type __id "links";
       subject = Prop.computed __type __id "subject";
       template_name = Prop.computed __type __id "template_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_customization
        (okta_email_customization ?body ?force_is_default ?is_default
           ?language ?subject ~brand_id ~template_name ());
    attrs = __attrs;
  }

let register ?tf_module ?body ?force_is_default ?is_default ?language
    ?subject ~brand_id ~template_name __id =
  let (r : _ Tf_core.resource) =
    make ?body ?force_is_default ?is_default ?language ?subject
      ~brand_id ~template_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
