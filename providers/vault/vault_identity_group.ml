(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_group = {
  external_member_entity_ids : bool prop option; [@option]
  external_member_group_ids : bool prop option; [@option]
  external_policies : bool prop option; [@option]
  id : string prop option; [@option]
  member_entity_ids : string prop list option; [@option]
  member_group_ids : string prop list option; [@option]
  metadata : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_group) -> ()

let yojson_of_vault_identity_group =
  (function
   | {
       external_member_entity_ids = v_external_member_entity_ids;
       external_member_group_ids = v_external_member_group_ids;
       external_policies = v_external_policies;
       id = v_id;
       member_entity_ids = v_member_entity_ids;
       member_group_ids = v_member_group_ids;
       metadata = v_metadata;
       name = v_name;
       namespace = v_namespace;
       policies = v_policies;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policies", arg in
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
       match v_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_member_group_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "member_group_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_member_entity_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "member_entity_ids", arg in
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
       match v_external_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_policies", arg in
         bnd :: bnds
     in
     let bnds =
       match v_external_member_group_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_member_group_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_external_member_entity_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_member_entity_ids", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_group

[@@@deriving.end]

let vault_identity_group ?external_member_entity_ids ?external_member_group_ids ?external_policies ?id
  ?member_entity_ids ?member_group_ids ?metadata ?name ?namespace ?policies ?type_ () =
  ({
     external_member_entity_ids;
     external_member_group_ids;
     external_policies;
     id;
     member_entity_ids;
     member_group_ids;
     metadata;
     name;
     namespace;
     policies;
     type_;
   }
    : vault_identity_group)

type t = {
  tf_name : string;
  external_member_entity_ids : bool prop;
  external_member_group_ids : bool prop;
  external_policies : bool prop;
  id : string prop;
  member_entity_ids : string list prop;
  member_group_ids : string list prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  namespace : string prop;
  policies : string list prop;
  type_ : string prop;
}

let make ?external_member_entity_ids ?external_member_group_ids ?external_policies ?id ?member_entity_ids
  ?member_group_ids ?metadata ?name ?namespace ?policies ?type_ __id =
  let __type = "vault_identity_group" in
  let __attrs =
    ({
       tf_name = __id;
       external_member_entity_ids = Prop.computed __type __id "external_member_entity_ids";
       external_member_group_ids = Prop.computed __type __id "external_member_group_ids";
       external_policies = Prop.computed __type __id "external_policies";
       id = Prop.computed __type __id "id";
       member_entity_ids = Prop.computed __type __id "member_entity_ids";
       member_group_ids = Prop.computed __type __id "member_group_ids";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
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
        (vault_identity_group ?external_member_entity_ids ?external_member_group_ids ?external_policies ?id
           ?member_entity_ids ?member_group_ids ?metadata ?name ?namespace ?policies ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?external_member_entity_ids ?external_member_group_ids ?external_policies ?id ?member_entity_ids
  ?member_group_ids ?metadata ?name ?namespace ?policies ?type_ __id =
  let (r : _ Tf_core.resource) =
    make ?external_member_entity_ids ?external_member_group_ids ?external_policies ?id ?member_entity_ids
      ?member_group_ids ?metadata ?name ?namespace ?policies ?type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
