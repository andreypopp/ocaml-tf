(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_namespace = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_namespace) -> ()

let yojson_of_vault_namespace =
  (function
   | { id = v_id; namespace = v_namespace; path = v_path } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_namespace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_namespace

[@@@deriving.end]

let vault_namespace ?id ?namespace ?path () = ({ id; namespace; path } : vault_namespace)

type t = {
  tf_name : string;
  custom_metadata : string Tf_core.assoc prop;
  id : string prop;
  namespace : string prop;
  namespace_id : string prop;
  path : string prop;
  path_fq : string prop;
}

let make ?id ?namespace ?path __id =
  let __type = "vault_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       custom_metadata = Prop.computed __type __id "custom_metadata";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       namespace_id = Prop.computed __type __id "namespace_id";
       path = Prop.computed __type __id "path";
       path_fq = Prop.computed __type __id "path_fq";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_namespace (vault_namespace ?id ?namespace ?path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?path __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?path __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
