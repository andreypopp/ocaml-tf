(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kmip_secret_role = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  operation_activate : bool prop option; [@option]
  operation_add_attribute : bool prop option; [@option]
  operation_all : bool prop option; [@option]
  operation_create : bool prop option; [@option]
  operation_destroy : bool prop option; [@option]
  operation_discover_versions : bool prop option; [@option]
  operation_get : bool prop option; [@option]
  operation_get_attribute_list : bool prop option; [@option]
  operation_get_attributes : bool prop option; [@option]
  operation_locate : bool prop option; [@option]
  operation_none : bool prop option; [@option]
  operation_register : bool prop option; [@option]
  operation_rekey : bool prop option; [@option]
  operation_revoke : bool prop option; [@option]
  path : string prop;
  role : string prop;
  scope : string prop;
  tls_client_key_bits : float prop option; [@option]
  tls_client_key_type : string prop option; [@option]
  tls_client_ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kmip_secret_role) -> ()

let yojson_of_vault_kmip_secret_role =
  (function
   | {
       id = v_id;
       namespace = v_namespace;
       operation_activate = v_operation_activate;
       operation_add_attribute = v_operation_add_attribute;
       operation_all = v_operation_all;
       operation_create = v_operation_create;
       operation_destroy = v_operation_destroy;
       operation_discover_versions = v_operation_discover_versions;
       operation_get = v_operation_get;
       operation_get_attribute_list = v_operation_get_attribute_list;
       operation_get_attributes = v_operation_get_attributes;
       operation_locate = v_operation_locate;
       operation_none = v_operation_none;
       operation_register = v_operation_register;
       operation_rekey = v_operation_rekey;
       operation_revoke = v_operation_revoke;
       path = v_path;
       role = v_role;
       scope = v_scope;
       tls_client_key_bits = v_tls_client_key_bits;
       tls_client_key_type = v_tls_client_key_type;
       tls_client_ttl = v_tls_client_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_tls_client_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "tls_client_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_client_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_client_key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_client_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "tls_client_key_bits", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_scope in
       ("scope", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_operation_revoke with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_revoke", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_rekey with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_rekey", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_register with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_register", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_none with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_none", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_locate with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_locate", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_get_attributes with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_get_attributes", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_get_attribute_list with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_get_attribute_list", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_get with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_get", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_discover_versions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_discover_versions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_destroy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_destroy", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_create with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_create", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_all with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_all", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_add_attribute with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_add_attribute", arg in
         bnd :: bnds
     in
     let bnds =
       match v_operation_activate with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "operation_activate", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kmip_secret_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kmip_secret_role

[@@@deriving.end]

let vault_kmip_secret_role ?id ?namespace ?operation_activate ?operation_add_attribute ?operation_all ?operation_create
  ?operation_destroy ?operation_discover_versions ?operation_get ?operation_get_attribute_list ?operation_get_attributes
  ?operation_locate ?operation_none ?operation_register ?operation_rekey ?operation_revoke ?tls_client_key_bits
  ?tls_client_key_type ?tls_client_ttl ~path ~role ~scope () =
  ({
     id;
     namespace;
     operation_activate;
     operation_add_attribute;
     operation_all;
     operation_create;
     operation_destroy;
     operation_discover_versions;
     operation_get;
     operation_get_attribute_list;
     operation_get_attributes;
     operation_locate;
     operation_none;
     operation_register;
     operation_rekey;
     operation_revoke;
     path;
     role;
     scope;
     tls_client_key_bits;
     tls_client_key_type;
     tls_client_ttl;
   }
    : vault_kmip_secret_role)

type t = {
  tf_name : string;
  id : string prop;
  namespace : string prop;
  operation_activate : bool prop;
  operation_add_attribute : bool prop;
  operation_all : bool prop;
  operation_create : bool prop;
  operation_destroy : bool prop;
  operation_discover_versions : bool prop;
  operation_get : bool prop;
  operation_get_attribute_list : bool prop;
  operation_get_attributes : bool prop;
  operation_locate : bool prop;
  operation_none : bool prop;
  operation_register : bool prop;
  operation_rekey : bool prop;
  operation_revoke : bool prop;
  path : string prop;
  role : string prop;
  scope : string prop;
  tls_client_key_bits : float prop;
  tls_client_key_type : string prop;
  tls_client_ttl : float prop;
}

let make ?id ?namespace ?operation_activate ?operation_add_attribute ?operation_all ?operation_create ?operation_destroy
  ?operation_discover_versions ?operation_get ?operation_get_attribute_list ?operation_get_attributes ?operation_locate
  ?operation_none ?operation_register ?operation_rekey ?operation_revoke ?tls_client_key_bits ?tls_client_key_type
  ?tls_client_ttl ~path ~role ~scope __id =
  let __type = "vault_kmip_secret_role" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       operation_activate = Prop.computed __type __id "operation_activate";
       operation_add_attribute = Prop.computed __type __id "operation_add_attribute";
       operation_all = Prop.computed __type __id "operation_all";
       operation_create = Prop.computed __type __id "operation_create";
       operation_destroy = Prop.computed __type __id "operation_destroy";
       operation_discover_versions = Prop.computed __type __id "operation_discover_versions";
       operation_get = Prop.computed __type __id "operation_get";
       operation_get_attribute_list = Prop.computed __type __id "operation_get_attribute_list";
       operation_get_attributes = Prop.computed __type __id "operation_get_attributes";
       operation_locate = Prop.computed __type __id "operation_locate";
       operation_none = Prop.computed __type __id "operation_none";
       operation_register = Prop.computed __type __id "operation_register";
       operation_rekey = Prop.computed __type __id "operation_rekey";
       operation_revoke = Prop.computed __type __id "operation_revoke";
       path = Prop.computed __type __id "path";
       role = Prop.computed __type __id "role";
       scope = Prop.computed __type __id "scope";
       tls_client_key_bits = Prop.computed __type __id "tls_client_key_bits";
       tls_client_key_type = Prop.computed __type __id "tls_client_key_type";
       tls_client_ttl = Prop.computed __type __id "tls_client_ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kmip_secret_role
        (vault_kmip_secret_role ?id ?namespace ?operation_activate ?operation_add_attribute ?operation_all
           ?operation_create ?operation_destroy ?operation_discover_versions ?operation_get
           ?operation_get_attribute_list ?operation_get_attributes ?operation_locate ?operation_none ?operation_register
           ?operation_rekey ?operation_revoke ?tls_client_key_bits ?tls_client_key_type ?tls_client_ttl ~path ~role
           ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?operation_activate ?operation_add_attribute ?operation_all ?operation_create
  ?operation_destroy ?operation_discover_versions ?operation_get ?operation_get_attribute_list ?operation_get_attributes
  ?operation_locate ?operation_none ?operation_register ?operation_rekey ?operation_revoke ?tls_client_key_bits
  ?tls_client_key_type ?tls_client_ttl ~path ~role ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?namespace ?operation_activate ?operation_add_attribute ?operation_all ?operation_create ?operation_destroy
      ?operation_discover_versions ?operation_get ?operation_get_attribute_list ?operation_get_attributes
      ?operation_locate ?operation_none ?operation_register ?operation_rekey ?operation_revoke ?tls_client_key_bits
      ?tls_client_key_type ?tls_client_ttl ~path ~role ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
