(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transform_role = {
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
  transformations : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transform_role) -> ()

let yojson_of_vault_transform_role =
  (function
   | { id = v_id; name = v_name; namespace = v_namespace; path = v_path; transformations = v_transformations } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_transformations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "transformations", arg in
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
    : vault_transform_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transform_role

[@@@deriving.end]

let vault_transform_role ?id ?namespace ?transformations ~name ~path () =
  ({ id; name; namespace; path; transformations } : vault_transform_role)

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  transformations : string list prop;
}

let make ?id ?namespace ?transformations ~name ~path __id =
  let __type = "vault_transform_role" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       transformations = Prop.computed __type __id "transformations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_transform_role (vault_transform_role ?id ?namespace ?transformations ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?transformations ~name ~path __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?transformations ~name ~path __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
