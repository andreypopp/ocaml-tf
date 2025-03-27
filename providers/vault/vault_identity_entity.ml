(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_entity = {
  disabled : bool prop option; [@option]
  external_policies : bool prop option; [@option]
  id : string prop option; [@option]
  metadata : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_entity) -> ()

let yojson_of_vault_identity_entity =
  (function
   | {
       disabled = v_disabled;
       external_policies = v_external_policies;
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       namespace = v_namespace;
       policies = v_policies;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_disabled with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disabled", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_identity_entity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_entity

[@@@deriving.end]

let vault_identity_entity ?disabled ?external_policies ?id ?metadata ?name ?namespace ?policies () =
  ({ disabled; external_policies; id; metadata; name; namespace; policies } : vault_identity_entity)

type t = {
  tf_name : string;
  disabled : bool prop;
  external_policies : bool prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  namespace : string prop;
  policies : string list prop;
}

let make ?disabled ?external_policies ?id ?metadata ?name ?namespace ?policies __id =
  let __type = "vault_identity_entity" in
  let __attrs =
    ({
       tf_name = __id;
       disabled = Prop.computed __type __id "disabled";
       external_policies = Prop.computed __type __id "external_policies";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_entity
        (vault_identity_entity ?disabled ?external_policies ?id ?metadata ?name ?namespace ?policies ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?external_policies ?id ?metadata ?name ?namespace ?policies __id =
  let (r : _ Tf_core.resource) = make ?disabled ?external_policies ?id ?metadata ?name ?namespace ?policies __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
