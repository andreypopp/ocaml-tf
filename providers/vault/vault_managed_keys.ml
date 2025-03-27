(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws = {
  access_key : string prop;
  allow_generate_key : bool prop option; [@option]
  allow_replace_key : bool prop option; [@option]
  allow_store_key : bool prop option; [@option]
  any_mount : bool prop option; [@option]
  curve : string prop option; [@option]
  endpoint : string prop option; [@option]
  key_bits : string prop;
  key_type : string prop;
  kms_key : string prop;
  name : string prop;
  region : string prop option; [@option]
  secret_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws) -> ()

let yojson_of_aws =
  (function
   | {
       access_key = v_access_key;
       allow_generate_key = v_allow_generate_key;
       allow_replace_key = v_allow_replace_key;
       allow_store_key = v_allow_store_key;
       any_mount = v_any_mount;
       curve = v_curve;
       endpoint = v_endpoint;
       key_bits = v_key_bits;
       key_type = v_key_type;
       kms_key = v_kms_key;
       name = v_name;
       region = v_region;
       secret_key = v_secret_key;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_secret_key in
       ("secret_key", arg) :: bnds
     in
     let bnds =
       match v_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "region", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_kms_key in
       ("kms_key", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_type in
       ("key_type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_bits in
       ("key_bits", arg) :: bnds
     in
     let bnds =
       match v_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_curve with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "curve", arg in
         bnd :: bnds
     in
     let bnds =
       match v_any_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "any_mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_store_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_store_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_replace_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_replace_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_generate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_generate_key", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_access_key in
       ("access_key", arg) :: bnds
     in
     `Assoc bnds
    : aws -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws

[@@@deriving.end]

type azure = {
  allow_generate_key : bool prop option; [@option]
  allow_replace_key : bool prop option; [@option]
  allow_store_key : bool prop option; [@option]
  any_mount : bool prop option; [@option]
  client_id : string prop;
  client_secret : string prop;
  environment : string prop option; [@option]
  key_bits : string prop option; [@option]
  key_name : string prop;
  key_type : string prop;
  name : string prop;
  resource : string prop option; [@option]
  tenant_id : string prop;
  vault_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure) -> ()

let yojson_of_azure =
  (function
   | {
       allow_generate_key = v_allow_generate_key;
       allow_replace_key = v_allow_replace_key;
       allow_store_key = v_allow_store_key;
       any_mount = v_any_mount;
       client_id = v_client_id;
       client_secret = v_client_secret;
       environment = v_environment;
       key_bits = v_key_bits;
       key_name = v_key_name;
       key_type = v_key_type;
       name = v_name;
       resource = v_resource;
       tenant_id = v_tenant_id;
       vault_name = v_vault_name;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_vault_name in
       ("vault_name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_tenant_id in
       ("tenant_id", arg) :: bnds
     in
     let bnds =
       match v_resource with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "resource", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_type in
       ("key_type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_name in
       ("key_name", arg) :: bnds
     in
     let bnds =
       match v_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_bits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_environment with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "environment", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_client_secret in
       ("client_secret", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_client_id in
       ("client_id", arg) :: bnds
     in
     let bnds =
       match v_any_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "any_mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_store_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_store_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_replace_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_replace_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_generate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_generate_key", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : azure -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure

[@@@deriving.end]

type pkcs = {
  allow_generate_key : bool prop option; [@option]
  allow_replace_key : bool prop option; [@option]
  allow_store_key : bool prop option; [@option]
  any_mount : bool prop option; [@option]
  curve : string prop option; [@option]
  force_rw_session : string prop option; [@option]
  key_bits : string prop option; [@option]
  key_id : string prop;
  key_label : string prop;
  library : string prop;
  mechanism : string prop;
  name : string prop;
  pin : string prop;
  slot : string prop option; [@option]
  token_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pkcs) -> ()

let yojson_of_pkcs =
  (function
   | {
       allow_generate_key = v_allow_generate_key;
       allow_replace_key = v_allow_replace_key;
       allow_store_key = v_allow_store_key;
       any_mount = v_any_mount;
       curve = v_curve;
       force_rw_session = v_force_rw_session;
       key_bits = v_key_bits;
       key_id = v_key_id;
       key_label = v_key_label;
       library = v_library;
       mechanism = v_mechanism;
       name = v_name;
       pin = v_pin;
       slot = v_slot;
       token_label = v_token_label;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_token_label with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token_label", arg in
         bnd :: bnds
     in
     let bnds =
       match v_slot with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "slot", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_pin in
       ("pin", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mechanism in
       ("mechanism", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_library in
       ("library", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_label in
       ("key_label", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key_id in
       ("key_id", arg) :: bnds
     in
     let bnds =
       match v_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_bits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_force_rw_session with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "force_rw_session", arg in
         bnd :: bnds
     in
     let bnds =
       match v_curve with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "curve", arg in
         bnd :: bnds
     in
     let bnds =
       match v_any_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "any_mount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_store_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_store_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_replace_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_replace_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_generate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_generate_key", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : pkcs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pkcs

[@@@deriving.end]

type vault_managed_keys = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  aws : aws list; [@default []] [@yojson_drop_default Stdlib.( = )]
  azure : azure list; [@default []] [@yojson_drop_default Stdlib.( = )]
  pkcs : pkcs list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_managed_keys) -> ()

let yojson_of_vault_managed_keys =
  (function
   | { id = v_id; namespace = v_namespace; aws = v_aws; azure = v_azure; pkcs = v_pkcs } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_pkcs then bnds
       else (
         let arg = (yojson_of_list yojson_of_pkcs) v_pkcs in
         let bnd = "pkcs", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_azure then bnds
       else (
         let arg = (yojson_of_list yojson_of_azure) v_azure in
         let bnd = "azure", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_aws then bnds
       else (
         let arg = (yojson_of_list yojson_of_aws) v_aws in
         let bnd = "aws", arg in
         bnd :: bnds)
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_managed_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_managed_keys

[@@@deriving.end]

let aws ?allow_generate_key ?allow_replace_key ?allow_store_key ?any_mount ?curve ?endpoint ?region ~access_key
  ~key_bits ~key_type ~kms_key ~name ~secret_key () =
  ({
     access_key;
     allow_generate_key;
     allow_replace_key;
     allow_store_key;
     any_mount;
     curve;
     endpoint;
     key_bits;
     key_type;
     kms_key;
     name;
     region;
     secret_key;
   }
    : aws)

let azure ?allow_generate_key ?allow_replace_key ?allow_store_key ?any_mount ?environment ?key_bits ?resource ~client_id
  ~client_secret ~key_name ~key_type ~name ~tenant_id ~vault_name () =
  ({
     allow_generate_key;
     allow_replace_key;
     allow_store_key;
     any_mount;
     client_id;
     client_secret;
     environment;
     key_bits;
     key_name;
     key_type;
     name;
     resource;
     tenant_id;
     vault_name;
   }
    : azure)

let pkcs ?allow_generate_key ?allow_replace_key ?allow_store_key ?any_mount ?curve ?force_rw_session ?key_bits ?slot
  ?token_label ~key_id ~key_label ~library ~mechanism ~name ~pin () =
  ({
     allow_generate_key;
     allow_replace_key;
     allow_store_key;
     any_mount;
     curve;
     force_rw_session;
     key_bits;
     key_id;
     key_label;
     library;
     mechanism;
     name;
     pin;
     slot;
     token_label;
   }
    : pkcs)

let vault_managed_keys ?id ?namespace ~aws ~azure ~pkcs () = ({ id; namespace; aws; azure; pkcs } : vault_managed_keys)

type t = {
  tf_name : string;
  id : string prop;
  namespace : string prop;
}

let make ?id ?namespace ~aws ~azure ~pkcs __id =
  let __type = "vault_managed_keys" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id"; namespace = Prop.computed __type __id "namespace" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_managed_keys (vault_managed_keys ?id ?namespace ~aws ~azure ~pkcs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~aws ~azure ~pkcs __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~aws ~azure ~pkcs __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
