(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kubernetes_all_namespaces = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_all_namespaces) -> ()

let yojson_of_kubernetes_all_namespaces =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : kubernetes_all_namespaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_all_namespaces

[@@@deriving.end]

let kubernetes_all_namespaces ?id () : kubernetes_all_namespaces =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  namespaces : string list prop;
}

let make ?id __id =
  let __type = "kubernetes_all_namespaces" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       namespaces = Prop.computed __type __id "namespaces";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_all_namespaces
        (kubernetes_all_namespaces ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
