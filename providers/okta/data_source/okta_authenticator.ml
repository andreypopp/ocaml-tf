(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_authenticator = {
  id : string prop option; [@option]
  key : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_authenticator) -> ()

let yojson_of_okta_authenticator =
  (function
   | { id = v_id; key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
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
    : okta_authenticator -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_authenticator

[@@@deriving.end]

let okta_authenticator ?id ?key ?name () : okta_authenticator =
  { id; key; name }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  name : string prop;
  provider_auth_port : float prop;
  provider_hostname : string prop;
  provider_instance_id : string prop;
  provider_json : string prop;
  provider_type : string prop;
  provider_user_name_template : string prop;
  settings : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?id ?key ?name __id =
  let __type = "okta_authenticator" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       provider_auth_port =
         Prop.computed __type __id "provider_auth_port";
       provider_hostname =
         Prop.computed __type __id "provider_hostname";
       provider_instance_id =
         Prop.computed __type __id "provider_instance_id";
       provider_json = Prop.computed __type __id "provider_json";
       provider_type = Prop.computed __type __id "provider_type";
       provider_user_name_template =
         Prop.computed __type __id "provider_user_name_template";
       settings = Prop.computed __type __id "settings";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_authenticator
        (okta_authenticator ?id ?key ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?key ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
