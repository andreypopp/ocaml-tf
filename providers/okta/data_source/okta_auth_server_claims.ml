(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type claims = {
  always_include_in_token : bool prop;
  claim_type : string prop;
  id : string prop;
  name : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : string prop;
  value : string prop;
  value_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : claims) -> ()

let yojson_of_claims =
  (function
   | {
       always_include_in_token = v_always_include_in_token;
       claim_type = v_claim_type;
       id = v_id;
       name = v_name;
       scopes = v_scopes;
       status = v_status;
       value = v_value;
       value_type = v_value_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_claim_type in
         ("claim_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_always_include_in_token
         in
         ("always_include_in_token", arg) :: bnds
       in
       `Assoc bnds
    : claims -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_claims

[@@@deriving.end]

type okta_auth_server_claims = {
  auth_server_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_claims) -> ()

let yojson_of_okta_auth_server_claims =
  (function
   | { auth_server_id = v_auth_server_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : okta_auth_server_claims -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_claims

[@@@deriving.end]

let okta_auth_server_claims ?id ~auth_server_id () :
    okta_auth_server_claims =
  { auth_server_id; id }

type t = {
  tf_name : string;
  auth_server_id : string prop;
  claims : claims list prop;
  id : string prop;
}

let make ?id ~auth_server_id __id =
  let __type = "okta_auth_server_claims" in
  let __attrs =
    ({
       tf_name = __id;
       auth_server_id = Prop.computed __type __id "auth_server_id";
       claims = Prop.computed __type __id "claims";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_auth_server_claims
        (okta_auth_server_claims ?id ~auth_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~auth_server_id __id =
  let (r : _ Tf_core.resource) = make ?id ~auth_server_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
