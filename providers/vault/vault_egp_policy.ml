(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_egp_policy = {
  enforcement_level : string prop;
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  paths : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_egp_policy) -> ()

let yojson_of_vault_egp_policy =
  (function
   | {
       enforcement_level = v_enforcement_level;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       paths = v_paths;
       policy = v_policy;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_policy in
       ("policy", arg) :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_paths then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_paths in
         let bnd = "paths", arg in
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
       let arg = yojson_of_prop yojson_of_string v_enforcement_level in
       ("enforcement_level", arg) :: bnds
     in
     `Assoc bnds
    : vault_egp_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_egp_policy

[@@@deriving.end]

let vault_egp_policy ?id ?namespace ~enforcement_level ~name ~paths ~policy () =
  ({ enforcement_level; id; name; namespace; paths; policy } : vault_egp_policy)

type t = {
  tf_name : string;
  enforcement_level : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  paths : string list prop;
  policy : string prop;
}

let make ?id ?namespace ~enforcement_level ~name ~paths ~policy __id =
  let __type = "vault_egp_policy" in
  let __attrs =
    ({
       tf_name = __id;
       enforcement_level = Prop.computed __type __id "enforcement_level";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       paths = Prop.computed __type __id "paths";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_egp_policy (vault_egp_policy ?id ?namespace ~enforcement_level ~name ~paths ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~enforcement_level ~name ~paths ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~enforcement_level ~name ~paths ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
