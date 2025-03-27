(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aliases = {
  canonical_id : string prop;
  creation_time : string prop;
  id : string prop;
  last_update_time : string prop;
  merged_from_canonical_ids : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata : string prop Tf_core.assoc;
  mount_accessor : string prop;
  mount_path : string prop;
  mount_type : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aliases) -> ()

let yojson_of_aliases =
  (function
   | {
       canonical_id = v_canonical_id;
       creation_time = v_creation_time;
       id = v_id;
       last_update_time = v_last_update_time;
       merged_from_canonical_ids = v_merged_from_canonical_ids;
       metadata = v_metadata;
       mount_accessor = v_mount_accessor;
       mount_path = v_mount_path;
       mount_type = v_mount_type;
       name = v_name;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount_type in
       ("mount_type", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount_path in
       ("mount_path", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_mount_accessor in
       ("mount_accessor", arg) :: bnds
     in
     let bnds =
       let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v_metadata in
       ("metadata", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_merged_from_canonical_ids then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_merged_from_canonical_ids in
         let bnd = "merged_from_canonical_ids", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_last_update_time in
       ("last_update_time", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_id in
       ("id", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_creation_time in
       ("creation_time", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_canonical_id in
       ("canonical_id", arg) :: bnds
     in
     `Assoc bnds
    : aliases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aliases

[@@@deriving.end]

type vault_identity_entity = {
  alias_id : string prop option; [@option]
  alias_mount_accessor : string prop option; [@option]
  alias_name : string prop option; [@option]
  entity_id : string prop option; [@option]
  entity_name : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_entity) -> ()

let yojson_of_vault_identity_entity =
  (function
   | {
       alias_id = v_alias_id;
       alias_mount_accessor = v_alias_mount_accessor;
       alias_name = v_alias_name;
       entity_id = v_entity_id;
       entity_name = v_entity_name;
       id = v_id;
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_entity_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "entity_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_entity_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "entity_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_alias_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "alias_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_alias_mount_accessor with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "alias_mount_accessor", arg in
         bnd :: bnds
     in
     let bnds =
       match v_alias_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "alias_id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_entity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_entity

[@@@deriving.end]

let vault_identity_entity ?alias_id ?alias_mount_accessor ?alias_name ?entity_id ?entity_name ?id ?namespace () =
  ({ alias_id; alias_mount_accessor; alias_name; entity_id; entity_name; id; namespace } : vault_identity_entity)

type t = {
  tf_name : string;
  alias_id : string prop;
  alias_mount_accessor : string prop;
  alias_name : string prop;
  aliases : aliases list prop;
  creation_time : string prop;
  data_json : string prop;
  direct_group_ids : string list prop;
  disabled : bool prop;
  entity_id : string prop;
  entity_name : string prop;
  group_ids : string list prop;
  id : string prop;
  inherited_group_ids : string list prop;
  last_update_time : string prop;
  merged_entity_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  namespace_id : string prop;
  policies : string list prop;
}

let make ?alias_id ?alias_mount_accessor ?alias_name ?entity_id ?entity_name ?id ?namespace __id =
  let __type = "vault_identity_entity" in
  let __attrs =
    ({
       tf_name = __id;
       alias_id = Prop.computed __type __id "alias_id";
       alias_mount_accessor = Prop.computed __type __id "alias_mount_accessor";
       alias_name = Prop.computed __type __id "alias_name";
       aliases = Prop.computed __type __id "aliases";
       creation_time = Prop.computed __type __id "creation_time";
       data_json = Prop.computed __type __id "data_json";
       direct_group_ids = Prop.computed __type __id "direct_group_ids";
       disabled = Prop.computed __type __id "disabled";
       entity_id = Prop.computed __type __id "entity_id";
       entity_name = Prop.computed __type __id "entity_name";
       group_ids = Prop.computed __type __id "group_ids";
       id = Prop.computed __type __id "id";
       inherited_group_ids = Prop.computed __type __id "inherited_group_ids";
       last_update_time = Prop.computed __type __id "last_update_time";
       merged_entity_ids = Prop.computed __type __id "merged_entity_ids";
       metadata = Prop.computed __type __id "metadata";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       policies = Prop.computed __type __id "policies";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_entity
        (vault_identity_entity ?alias_id ?alias_mount_accessor ?alias_name ?entity_id ?entity_name ?id ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_id ?alias_mount_accessor ?alias_name ?entity_id ?entity_name ?id ?namespace __id =
  let (r : _ Tf_core.resource) =
    make ?alias_id ?alias_mount_accessor ?alias_name ?entity_id ?entity_name ?id ?namespace __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
