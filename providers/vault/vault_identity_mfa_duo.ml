(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_mfa_duo = {
  api_hostname : string prop;
  id : string prop option; [@option]
  integration_key : string prop;
  namespace : string prop option; [@option]
  push_info : string prop option; [@option]
  secret_key : string prop;
  use_passcode : bool prop option; [@option]
  username_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_mfa_duo) -> ()

let yojson_of_vault_identity_mfa_duo =
  (function
   | {
       api_hostname = v_api_hostname;
       id = v_id;
       integration_key = v_integration_key;
       namespace = v_namespace;
       push_info = v_push_info;
       secret_key = v_secret_key;
       use_passcode = v_use_passcode;
       username_format = v_username_format;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username_format with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username_format", arg in
         bnd :: bnds
     in
     let bnds =
       match v_use_passcode with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_passcode", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_secret_key in
       ("secret_key", arg) :: bnds
     in
     let bnds =
       match v_push_info with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "push_info", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_integration_key in
       ("integration_key", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_api_hostname in
       ("api_hostname", arg) :: bnds
     in
     `Assoc bnds
    : vault_identity_mfa_duo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_mfa_duo

[@@@deriving.end]

let vault_identity_mfa_duo ?id ?namespace ?push_info ?use_passcode ?username_format ~api_hostname ~integration_key
  ~secret_key () =
  ({ api_hostname; id; integration_key; namespace; push_info; secret_key; use_passcode; username_format }
    : vault_identity_mfa_duo)

type t = {
  tf_name : string;
  api_hostname : string prop;
  id : string prop;
  integration_key : string prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  push_info : string prop;
  secret_key : string prop;
  type_ : string prop;
  use_passcode : bool prop;
  username_format : string prop;
  uuid : string prop;
}

let make ?id ?namespace ?push_info ?use_passcode ?username_format ~api_hostname ~integration_key ~secret_key __id =
  let __type = "vault_identity_mfa_duo" in
  let __attrs =
    ({
       tf_name = __id;
       api_hostname = Prop.computed __type __id "api_hostname";
       id = Prop.computed __type __id "id";
       integration_key = Prop.computed __type __id "integration_key";
       method_id = Prop.computed __type __id "method_id";
       mount_accessor = Prop.computed __type __id "mount_accessor";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_path = Prop.computed __type __id "namespace_path";
       push_info = Prop.computed __type __id "push_info";
       secret_key = Prop.computed __type __id "secret_key";
       type_ = Prop.computed __type __id "type";
       use_passcode = Prop.computed __type __id "use_passcode";
       username_format = Prop.computed __type __id "username_format";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_mfa_duo
        (vault_identity_mfa_duo ?id ?namespace ?push_info ?use_passcode ?username_format ~api_hostname ~integration_key
           ~secret_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?push_info ?use_passcode ?username_format ~api_hostname ~integration_key
  ~secret_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace ?push_info ?use_passcode ?username_format ~api_hostname ~integration_key ~secret_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
