(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_password_policy = {
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_password_policy) -> ()

let yojson_of_vault_password_policy =
  (function
   | { id = v_id; name = v_name; namespace = v_namespace; policy = v_policy } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_policy in
       ("policy", arg) :: bnds
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
     `Assoc bnds
    : vault_password_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_password_policy

[@@@deriving.end]

let vault_password_policy ?id ?namespace ~name ~policy () = ({ id; name; namespace; policy } : vault_password_policy)

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace : string prop;
  policy : string prop;
}

let make ?id ?namespace ~name ~policy __id =
  let __type = "vault_password_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_password_policy (vault_password_policy ?id ?namespace ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~name ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~name ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
