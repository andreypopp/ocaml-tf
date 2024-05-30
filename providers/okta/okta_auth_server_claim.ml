(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_auth_server_claim = {
  always_include_in_token : bool prop option; [@option]
  auth_server_id : string prop;
  claim_type : string prop;
  group_filter_type : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  scopes : string prop list option; [@option]
  status : string prop option; [@option]
  value : string prop;
  value_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_auth_server_claim) -> ()

let yojson_of_okta_auth_server_claim =
  (function
   | {
       always_include_in_token = v_always_include_in_token;
       auth_server_id = v_auth_server_id;
       claim_type = v_claim_type;
       group_filter_type = v_group_filter_type;
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
         match v_value_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
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
         match v_group_filter_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_filter_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_claim_type in
         ("claim_type", arg) :: bnds
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
    : okta_auth_server_claim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_auth_server_claim

[@@@deriving.end]

let okta_auth_server_claim ?always_include_in_token
    ?group_filter_type ?id ?scopes ?status ?value_type
    ~auth_server_id ~claim_type ~name ~value () :
    okta_auth_server_claim =
  {
    always_include_in_token;
    auth_server_id;
    claim_type;
    group_filter_type;
    id;
    name;
    scopes;
    status;
    value;
    value_type;
  }

type t = {
  tf_name : string;
  always_include_in_token : bool prop;
  auth_server_id : string prop;
  claim_type : string prop;
  group_filter_type : string prop;
  id : string prop;
  name : string prop;
  scopes : string list prop;
  status : string prop;
  value : string prop;
  value_type : string prop;
}

let make ?always_include_in_token ?group_filter_type ?id ?scopes
    ?status ?value_type ~auth_server_id ~claim_type ~name ~value __id
    =
  let __type = "okta_auth_server_claim" in
  let __attrs =
    ({
       tf_name = __id;
       always_include_in_token =
         Prop.computed __type __id "always_include_in_token";
       auth_server_id = Prop.computed __type __id "auth_server_id";
       claim_type = Prop.computed __type __id "claim_type";
       group_filter_type =
         Prop.computed __type __id "group_filter_type";
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
      yojson_of_okta_auth_server_claim
        (okta_auth_server_claim ?always_include_in_token
           ?group_filter_type ?id ?scopes ?status ?value_type
           ~auth_server_id ~claim_type ~name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?always_include_in_token ?group_filter_type
    ?id ?scopes ?status ?value_type ~auth_server_id ~claim_type ~name
    ~value __id =
  let (r : _ Tf_core.resource) =
    make ?always_include_in_token ?group_filter_type ?id ?scopes
      ?status ?value_type ~auth_server_id ~claim_type ~name ~value
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
