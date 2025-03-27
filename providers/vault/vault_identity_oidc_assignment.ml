(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_oidc_assignment = {
  entity_ids : string prop list option; [@option]
  group_ids : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_oidc_assignment) -> ()

let yojson_of_vault_identity_oidc_assignment =
  (function
   | { entity_ids = v_entity_ids; group_ids = v_group_ids; id = v_id; name = v_name; namespace = v_namespace } ->
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_group_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "group_ids", arg in
         bnd :: bnds
     in
     let bnds =
       match v_entity_ids with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "entity_ids", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_oidc_assignment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_oidc_assignment

[@@@deriving.end]

let vault_identity_oidc_assignment ?entity_ids ?group_ids ?id ?namespace ~name () =
  ({ entity_ids; group_ids; id; name; namespace } : vault_identity_oidc_assignment)

type t = {
  tf_name : string;
  entity_ids : string list prop;
  group_ids : string list prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

let make ?entity_ids ?group_ids ?id ?namespace ~name __id =
  let __type = "vault_identity_oidc_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       entity_ids = Prop.computed __type __id "entity_ids";
       group_ids = Prop.computed __type __id "group_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_oidc_assignment
        (vault_identity_oidc_assignment ?entity_ids ?group_ids ?id ?namespace ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?entity_ids ?group_ids ?id ?namespace ~name __id =
  let (r : _ Tf_core.resource) = make ?entity_ids ?group_ids ?id ?namespace ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
