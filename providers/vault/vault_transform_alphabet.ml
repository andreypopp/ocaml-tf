(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transform_alphabet = {
  alphabet : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transform_alphabet) -> ()

let yojson_of_vault_transform_alphabet =
  (function
   | { alphabet = v_alphabet; id = v_id; name = v_name; namespace = v_namespace; path = v_path } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
     let bnds =
       match v_alphabet with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "alphabet", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_transform_alphabet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transform_alphabet

[@@@deriving.end]

let vault_transform_alphabet ?alphabet ?id ?namespace ~name ~path () =
  ({ alphabet; id; name; namespace; path } : vault_transform_alphabet)

type t = {
  tf_name : string;
  alphabet : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
}

let make ?alphabet ?id ?namespace ~name ~path __id =
  let __type = "vault_transform_alphabet" in
  let __attrs =
    ({
       tf_name = __id;
       alphabet = Prop.computed __type __id "alphabet";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_transform_alphabet (vault_transform_alphabet ?alphabet ?id ?namespace ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?alphabet ?id ?namespace ~name ~path __id =
  let (r : _ Tf_core.resource) = make ?alphabet ?id ?namespace ~name ~path __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
