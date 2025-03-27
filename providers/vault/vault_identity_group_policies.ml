(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_identity_group_policies = {
  exclusive : bool prop option; [@option]
  group_id : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_identity_group_policies) -> ()

let yojson_of_vault_identity_group_policies =
  (function
   | { exclusive = v_exclusive; group_id = v_group_id; id = v_id; namespace = v_namespace; policies = v_policies } ->
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
    : vault_identity_group_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_identity_group_policies

[@@@deriving.end]

let vault_identity_group_policies ?exclusive ?id ?namespace ~group_id ~policies () =
  ({ exclusive; group_id; id; namespace; policies } : vault_identity_group_policies)

type t = {
  tf_name : string;
  exclusive : bool prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
}

let make ?exclusive ?id ?namespace ~group_id ~policies __id =
  let __type = "vault_identity_group_policies" in
  let __attrs =
    ({
       tf_name = __id;
       exclusive = Prop.computed __type __id "exclusive";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
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
      yojson_of_vault_identity_group_policies
        (vault_identity_group_policies ?exclusive ?id ?namespace ~group_id ~policies ());
    attrs = __attrs;
  }

let register ?tf_module ?exclusive ?id ?namespace ~group_id ~policies __id =
  let (r : _ Tf_core.resource) = make ?exclusive ?id ?namespace ~group_id ~policies __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
