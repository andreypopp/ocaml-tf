(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_mfa_pingid = {
  id : string prop option; [@option]
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  settings_file_base64 : string prop;
  username_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_mfa_pingid) -> ()

let yojson_of_vault_mfa_pingid =
  (function
   | {
       id = v_id;
       mount_accessor = v_mount_accessor;
       name = v_name;
       namespace = v_namespace;
       settings_file_base64 = v_settings_file_base64;
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
       let arg = yojson_of_prop yojson_of_string v_settings_file_base64 in
       ("settings_file_base64", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount_accessor in
       ("mount_accessor", arg) :: bnds
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
    : vault_mfa_pingid -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_mfa_pingid

[@@@deriving.end]

let vault_mfa_pingid ?id ?namespace ?username_format ~mount_accessor ~name ~settings_file_base64 () =
  ({ id; mount_accessor; name; namespace; settings_file_base64; username_format } : vault_mfa_pingid)

type t = {
  tf_name : string;
  admin_url : string prop;
  authenticator_url : string prop;
  id : string prop;
  idp_url : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  org_alias : string prop;
  settings_file_base64 : string prop;
  type_ : string prop;
  use_signature : bool prop;
  username_format : string prop;
}

let make ?id ?namespace ?username_format ~mount_accessor ~name ~settings_file_base64 __id =
  let __type = "vault_mfa_pingid" in
  let __attrs =
    ({
       tf_name = __id;
       admin_url = Prop.computed __type __id "admin_url";
       authenticator_url = Prop.computed __type __id "authenticator_url";
       id = Prop.computed __type __id "id";
       idp_url = Prop.computed __type __id "idp_url";
       mount_accessor = Prop.computed __type __id "mount_accessor";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       org_alias = Prop.computed __type __id "org_alias";
       settings_file_base64 = Prop.computed __type __id "settings_file_base64";
       type_ = Prop.computed __type __id "type";
       use_signature = Prop.computed __type __id "use_signature";
       username_format = Prop.computed __type __id "username_format";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_mfa_pingid
        (vault_mfa_pingid ?id ?namespace ?username_format ~mount_accessor ~name ~settings_file_base64 ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?username_format ~mount_accessor ~name ~settings_file_base64 __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace ?username_format ~mount_accessor ~name ~settings_file_base64 __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
