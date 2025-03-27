(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_mfa_login_enforcement = {
  auth_method_accessors : string prop list option; [@option]
  auth_method_types : string prop list option; [@option]
  id : string prop option; [@option]
  identity_entity_ids : string prop list option; [@option]
  identity_group_ids : string prop list option; [@option]
  mfa_method_ids : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_mfa_login_enforcement) -> ()

let yojson_of_vault_identity_mfa_login_enforcement =
  (function
   | {
       auth_method_accessors = v_auth_method_accessors;
       auth_method_types = v_auth_method_types;
       id = v_id;
       identity_entity_ids = v_identity_entity_ids;
       identity_group_ids = v_identity_group_ids;
       mfa_method_ids = v_mfa_method_ids;
       name = v_name;
       namespace = v_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       if Stdlib.( = ) [] v_mfa_method_ids then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_mfa_method_ids in
         let bnd = "mfa_method_ids", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_identity_group_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "identity_group_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_entity_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "identity_entity_ids", arg in
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
     let bnds =
       match v_auth_method_types with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "auth_method_types", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_method_accessors with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "auth_method_accessors", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_mfa_login_enforcement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_mfa_login_enforcement

[@@@deriving.end]

let vault_identity_mfa_login_enforcement ?auth_method_accessors ?auth_method_types ?id ?identity_entity_ids
  ?identity_group_ids ?namespace ~mfa_method_ids ~name () =
  ({
     auth_method_accessors;
     auth_method_types;
     id;
     identity_entity_ids;
     identity_group_ids;
     mfa_method_ids;
     name;
     namespace;
   }
    : vault_identity_mfa_login_enforcement)

type t = {
  tf_name : string;
  auth_method_accessors : string list prop;
  auth_method_types : string list prop;
  id : string prop;
  identity_entity_ids : string list prop;
  identity_group_ids : string list prop;
  mfa_method_ids : string list prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  uuid : string prop;
}

let make ?auth_method_accessors ?auth_method_types ?id ?identity_entity_ids ?identity_group_ids ?namespace
  ~mfa_method_ids ~name __id =
  let __type = "vault_identity_mfa_login_enforcement" in
  let __attrs =
    ({
       tf_name = __id;
       auth_method_accessors = Prop.computed __type __id "auth_method_accessors";
       auth_method_types = Prop.computed __type __id "auth_method_types";
       id = Prop.computed __type __id "id";
       identity_entity_ids = Prop.computed __type __id "identity_entity_ids";
       identity_group_ids = Prop.computed __type __id "identity_group_ids";
       mfa_method_ids = Prop.computed __type __id "mfa_method_ids";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_path = Prop.computed __type __id "namespace_path";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_mfa_login_enforcement
        (vault_identity_mfa_login_enforcement ?auth_method_accessors ?auth_method_types ?id ?identity_entity_ids
           ?identity_group_ids ?namespace ~mfa_method_ids ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auth_method_accessors ?auth_method_types ?id ?identity_entity_ids ?identity_group_ids
  ?namespace ~mfa_method_ids ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auth_method_accessors ?auth_method_types ?id ?identity_entity_ids ?identity_group_ids ?namespace
      ~mfa_method_ids ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
