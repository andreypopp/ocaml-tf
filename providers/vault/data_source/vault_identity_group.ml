(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_group = {
  alias_id : string prop option; [@option]
  alias_mount_accessor : string prop option; [@option]
  alias_name : string prop option; [@option]
  group_id : string prop option; [@option]
  group_name : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_group) -> ()

let yojson_of_vault_identity_group =
  (function
   | {
       alias_id = v_alias_id;
       alias_mount_accessor = v_alias_mount_accessor;
       alias_name = v_alias_name;
       group_id = v_group_id;
       group_name = v_group_name;
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
       match v_group_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "group_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_group_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "group_id", arg in
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
    : vault_identity_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_group

[@@@deriving.end]

let vault_identity_group ?alias_id ?alias_mount_accessor ?alias_name ?group_id ?group_name ?id ?namespace () =
  ({ alias_id; alias_mount_accessor; alias_name; group_id; group_name; id; namespace } : vault_identity_group)

type t = {
  tf_name : string;
  alias_canonical_id : string prop;
  alias_creation_time : string prop;
  alias_id : string prop;
  alias_last_update_time : string prop;
  alias_merged_from_canonical_ids : string list prop;
  alias_metadata : string Tf_core.assoc prop;
  alias_mount_accessor : string prop;
  alias_mount_path : string prop;
  alias_mount_type : string prop;
  alias_name : string prop;
  creation_time : string prop;
  data_json : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  last_update_time : string prop;
  member_entity_ids : string list prop;
  member_group_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  modify_index : float prop;
  namespace : string prop;
  namespace_id : string prop;
  parent_group_ids : string list prop;
  policies : string list prop;
  type_ : string prop;
}

let make ?alias_id ?alias_mount_accessor ?alias_name ?group_id ?group_name ?id ?namespace __id =
  let __type = "vault_identity_group" in
  let __attrs =
    ({
       tf_name = __id;
       alias_canonical_id = Prop.computed __type __id "alias_canonical_id";
       alias_creation_time = Prop.computed __type __id "alias_creation_time";
       alias_id = Prop.computed __type __id "alias_id";
       alias_last_update_time = Prop.computed __type __id "alias_last_update_time";
       alias_merged_from_canonical_ids = Prop.computed __type __id "alias_merged_from_canonical_ids";
       alias_metadata = Prop.computed __type __id "alias_metadata";
       alias_mount_accessor = Prop.computed __type __id "alias_mount_accessor";
       alias_mount_path = Prop.computed __type __id "alias_mount_path";
       alias_mount_type = Prop.computed __type __id "alias_mount_type";
       alias_name = Prop.computed __type __id "alias_name";
       creation_time = Prop.computed __type __id "creation_time";
       data_json = Prop.computed __type __id "data_json";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       last_update_time = Prop.computed __type __id "last_update_time";
       member_entity_ids = Prop.computed __type __id "member_entity_ids";
       member_group_ids = Prop.computed __type __id "member_group_ids";
       metadata = Prop.computed __type __id "metadata";
       modify_index = Prop.computed __type __id "modify_index";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       parent_group_ids = Prop.computed __type __id "parent_group_ids";
       policies = Prop.computed __type __id "policies";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_group
        (vault_identity_group ?alias_id ?alias_mount_accessor ?alias_name ?group_id ?group_name ?id ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_id ?alias_mount_accessor ?alias_name ?group_id ?group_name ?id ?namespace __id =
  let (r : _ Tf_core.resource) =
    make ?alias_id ?alias_mount_accessor ?alias_name ?group_id ?group_name ?id ?namespace __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
