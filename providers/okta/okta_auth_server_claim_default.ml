(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_claim_default = {
  always_include_in_token : bool prop option; [@option]
  auth_server_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_claim_default) -> ()

let yojson_of_okta_auth_server_claim_default =
  (function
   | {
       always_include_in_token = v_always_include_in_token;
       auth_server_id = v_auth_server_id;
       id = v_id;
       name = v_name;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auth_server_id
         in
         ("auth_server_id", arg) :: bnds
       in
       let bnds =
         match v_always_include_in_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_include_in_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_auth_server_claim_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_claim_default

[@@@deriving.end]

let okta_auth_server_claim_default ?always_include_in_token ?id
    ?value ~auth_server_id ~name () : okta_auth_server_claim_default
    =
  { always_include_in_token; auth_server_id; id; name; value }

type t = {
  tf_name : string;
  always_include_in_token : bool prop;
  auth_server_id : string prop;
  claim_type : string prop;
  id : string prop;
  name : string prop;
  scopes : string list prop;
  status : string prop;
  value : string prop;
  value_type : string prop;
}

let make ?always_include_in_token ?id ?value ~auth_server_id ~name
    __id =
  let __type = "okta_auth_server_claim_default" in
  let __attrs =
    ({
       tf_name = __id;
       always_include_in_token =
         Prop.computed __type __id "always_include_in_token";
       auth_server_id = Prop.computed __type __id "auth_server_id";
       claim_type = Prop.computed __type __id "claim_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       scopes = Prop.computed __type __id "scopes";
       status = Prop.computed __type __id "status";
       value = Prop.computed __type __id "value";
       value_type = Prop.computed __type __id "value_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_claim_default
        (okta_auth_server_claim_default ?always_include_in_token ?id
           ?value ~auth_server_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?always_include_in_token ?id ?value
    ~auth_server_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?always_include_in_token ?id ?value ~auth_server_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
