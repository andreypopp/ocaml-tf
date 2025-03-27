(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_entity_policies = {
  entity_id : string prop;
  exclusive : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_entity_policies) -> ()

let yojson_of_vault_identity_entity_policies =
  (function
   | { entity_id = v_entity_id; exclusive = v_exclusive; id = v_id; namespace = v_namespace; policies = v_policies } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_policies then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_policies in
         let bnd = "policies", arg in
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
     let bnds =
       match v_exclusive with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "exclusive", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_entity_id in
       ("entity_id", arg) :: bnds
     in
     `Assoc bnds
    : vault_identity_entity_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_entity_policies

[@@@deriving.end]

let vault_identity_entity_policies ?exclusive ?id ?namespace ~entity_id ~policies () =
  ({ entity_id; exclusive; id; namespace; policies } : vault_identity_entity_policies)

type t = {
  tf_name : string;
  entity_id : string prop;
  entity_name : string prop;
  exclusive : bool prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
}

let make ?exclusive ?id ?namespace ~entity_id ~policies __id =
  let __type = "vault_identity_entity_policies" in
  let __attrs =
    ({
       tf_name = __id;
       entity_id = Prop.computed __type __id "entity_id";
       entity_name = Prop.computed __type __id "entity_name";
       exclusive = Prop.computed __type __id "exclusive";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_identity_entity_policies
        (vault_identity_entity_policies ?exclusive ?id ?namespace ~entity_id ~policies ());
    attrs = __attrs;
  }

let register ?tf_module ?exclusive ?id ?namespace ~entity_id ~policies __id =
  let (r : _ Tf_core.resource) = make ?exclusive ?id ?namespace ~entity_id ~policies __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
