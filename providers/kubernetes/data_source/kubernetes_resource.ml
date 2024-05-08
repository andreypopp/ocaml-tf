(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type kubernetes_resource = {
  api_version : string prop;
  kind : string prop;
  object_ : json prop option; [@option] [@key "object"]
  metadata : metadata list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_resource) -> ()

let yojson_of_kubernetes_resource =
  (function
   | {
       api_version = v_api_version;
       kind = v_kind;
       object_ = v_object_;
       metadata = v_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         match v_object_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_json v in
             let bnd = "object", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_resource -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_resource

[@@@deriving.end]

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_resource ?object_ ~api_version ~kind ~metadata () :
    kubernetes_resource =
  { api_version; kind; object_; metadata }

type t = {
  tf_name : string;
  api_version : string prop;
  kind : string prop;
  object_ : json prop;
}

let make ?object_ ~api_version ~kind ~metadata __id =
  let __type = "kubernetes_resource" in
  let __attrs =
    ({
       tf_name = __id;
       api_version = Prop.computed __type __id "api_version";
       kind = Prop.computed __type __id "kind";
       object_ = Prop.computed __type __id "object";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_resource
        (kubernetes_resource ?object_ ~api_version ~kind ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?object_ ~api_version ~kind ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?object_ ~api_version ~kind ~metadata __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
