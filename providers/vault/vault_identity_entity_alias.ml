(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_entity_alias = {
  canonical_id : string prop;
  custom_metadata : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_entity_alias) -> ()

let yojson_of_vault_identity_entity_alias =
  (function
   | {
       canonical_id = v_canonical_id;
       custom_metadata = v_custom_metadata;
       id = v_id;
       mount_accessor = v_mount_accessor;
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
       match v_custom_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "custom_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_canonical_id in
       ("canonical_id", arg) :: bnds
     in
     `Assoc bnds
    : vault_identity_entity_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_entity_alias

[@@@deriving.end]

let vault_identity_entity_alias ?custom_metadata ?id ?namespace ~canonical_id ~mount_accessor ~name () =
  ({ canonical_id; custom_metadata; id; mount_accessor; name; namespace } : vault_identity_entity_alias)

type t = {
  tf_name : string;
  canonical_id : string prop;
  custom_metadata : string Tf_core.assoc prop;
  id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
}

let make ?custom_metadata ?id ?namespace ~canonical_id ~mount_accessor ~name __id =
  let __type = "vault_identity_entity_alias" in
  let __attrs =
    ({
       tf_name = __id;
       canonical_id = Prop.computed __type __id "canonical_id";
       custom_metadata = Prop.computed __type __id "custom_metadata";
       id = Prop.computed __type __id "id";
       mount_accessor = Prop.computed __type __id "mount_accessor";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_entity_alias
        (vault_identity_entity_alias ?custom_metadata ?id ?namespace ~canonical_id ~mount_accessor ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_metadata ?id ?namespace ~canonical_id ~mount_accessor ~name __id =
  let (r : _ Tf_core.resource) = make ?custom_metadata ?id ?namespace ~canonical_id ~mount_accessor ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
