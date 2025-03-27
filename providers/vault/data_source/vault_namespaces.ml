(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_namespaces = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_namespaces) -> ()

let yojson_of_vault_namespaces =
  (function
   | { id = v_id; namespace = v_namespace } ->
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
     `Assoc bnds
    : vault_namespaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_namespaces

[@@@deriving.end]

let vault_namespaces ?id ?namespace () = ({ id; namespace } : vault_namespaces)

type t = {
  tf_name : string;
  id : string prop;
  namespace : string prop;
  paths : string list prop;
}

let make ?id ?namespace __id =
  let __type = "vault_namespaces" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       paths = Prop.computed __type __id "paths";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_namespaces (vault_namespaces ?id ?namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
