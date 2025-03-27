(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_group_member_entity_ids = {
  exclusive : bool prop option; [@option]
  group_id : string prop;
  id : string prop option; [@option]
  member_entity_ids : string prop list option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_group_member_entity_ids) -> ()

let yojson_of_vault_identity_group_member_entity_ids =
  (function
   | {
       exclusive = v_exclusive;
       group_id = v_group_id;
       id = v_id;
       member_entity_ids = v_member_entity_ids;
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
       let arg = yojson_of_prop yojson_of_string v_group_id in
       ("group_id", arg) :: bnds
     in
     let bnds =
       match v_exclusive with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "exclusive", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_group_member_entity_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_group_member_entity_ids

[@@@deriving.end]

let vault_identity_group_member_entity_ids ?exclusive ?id ?member_entity_ids ?namespace ~group_id () =
  ({ exclusive; group_id; id; member_entity_ids; namespace } : vault_identity_group_member_entity_ids)

type t = {
  tf_name : string;
  exclusive : bool prop;
  group_id : string prop;
  id : string prop;
  member_entity_ids : string list prop;
  namespace : string prop;
}

let make ?exclusive ?id ?member_entity_ids ?namespace ~group_id __id =
  let __type = "vault_identity_group_member_entity_ids" in
  let __attrs =
    ({
       tf_name = __id;
       exclusive = Prop.computed __type __id "exclusive";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       member_entity_ids = Prop.computed __type __id "member_entity_ids";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_group_member_entity_ids
        (vault_identity_group_member_entity_ids ?exclusive ?id ?member_entity_ids ?namespace ~group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?exclusive ?id ?member_entity_ids ?namespace ~group_id __id =
  let (r : _ Tf_core.resource) = make ?exclusive ?id ?member_entity_ids ?namespace ~group_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
