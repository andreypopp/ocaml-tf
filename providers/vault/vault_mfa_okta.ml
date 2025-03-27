(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_mfa_okta = {
  api_token : string prop;
  base_url : string prop option; [@option]
  id : string prop option; [@option]
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  org_name : string prop;
  primary_email : bool prop option; [@option]
  username_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_mfa_okta) -> ()

let yojson_of_vault_mfa_okta =
  (function
   | {
       api_token = v_api_token;
       base_url = v_base_url;
       id = v_id;
       mount_accessor = v_mount_accessor;
       name = v_name;
       namespace = v_namespace;
       org_name = v_org_name;
       primary_email = v_primary_email;
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
       match v_primary_email with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "primary_email", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_org_name in
       ("org_name", arg) :: bnds
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
     let bnds =
       match v_base_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "base_url", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_api_token in
       ("api_token", arg) :: bnds
     in
     `Assoc bnds
    : vault_mfa_okta -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_mfa_okta

[@@@deriving.end]

let vault_mfa_okta ?base_url ?id ?namespace ?primary_email ?username_format ~api_token ~mount_accessor ~name ~org_name
  () =
  ({ api_token; base_url; id; mount_accessor; name; namespace; org_name; primary_email; username_format }
    : vault_mfa_okta)

type t = {
  tf_name : string;
  api_token : string prop;
  base_url : string prop;
  id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  org_name : string prop;
  primary_email : bool prop;
  username_format : string prop;
}

let make ?base_url ?id ?namespace ?primary_email ?username_format ~api_token ~mount_accessor ~name ~org_name __id =
  let __type = "vault_mfa_okta" in
  let __attrs =
    ({
       tf_name = __id;
       api_token = Prop.computed __type __id "api_token";
       base_url = Prop.computed __type __id "base_url";
       id = Prop.computed __type __id "id";
       mount_accessor = Prop.computed __type __id "mount_accessor";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       org_name = Prop.computed __type __id "org_name";
       primary_email = Prop.computed __type __id "primary_email";
       username_format = Prop.computed __type __id "username_format";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_mfa_okta
        (vault_mfa_okta ?base_url ?id ?namespace ?primary_email ?username_format ~api_token ~mount_accessor ~name
           ~org_name ());
    attrs = __attrs;
  }

let register ?tf_module ?base_url ?id ?namespace ?primary_email ?username_format ~api_token ~mount_accessor ~name
  ~org_name __id =
  let (r : _ Tf_core.resource) =
    make ?base_url ?id ?namespace ?primary_email ?username_format ~api_token ~mount_accessor ~name ~org_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
