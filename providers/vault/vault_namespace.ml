(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_namespace = {
  custom_metadata : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  path_fq : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_namespace) -> ()

let yojson_of_vault_namespace =
  (function
   | { custom_metadata = v_custom_metadata; id = v_id; namespace = v_namespace; path = v_path; path_fq = v_path_fq } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_path_fq with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path_fq", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
       match v_custom_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "custom_metadata", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_namespace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_namespace

[@@@deriving.end]

let vault_namespace ?custom_metadata ?id ?namespace ?path_fq ~path () =
  ({ custom_metadata; id; namespace; path; path_fq } : vault_namespace)

type t = {
  tf_name : string;
  custom_metadata : string Tf_core.assoc prop;
  id : string prop;
  namespace : string prop;
  namespace_id : string prop;
  path : string prop;
  path_fq : string prop;
}

let make ?custom_metadata ?id ?namespace ?path_fq ~path __id =
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
    json = yojson_of_vault_namespace (vault_namespace ?custom_metadata ?id ?namespace ?path_fq ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_metadata ?id ?namespace ?path_fq ~path __id =
  let (r : _ Tf_core.resource) = make ?custom_metadata ?id ?namespace ?path_fq ~path __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
