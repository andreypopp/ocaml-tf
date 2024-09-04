(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint__condition = {
  ready : bool prop option; [@option]
  serving : bool prop option; [@option]
  terminating : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__condition) -> ()

let yojson_of_endpoint__condition =
  (function
   | {
       ready = v_ready;
       serving = v_serving;
       terminating = v_terminating;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_terminating with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminating", arg in
             bnd :: bnds
       in
       let bnds =
         match v_serving with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "serving", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ready with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ready", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint__condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__condition

[@@@deriving.end]

type endpoint__target_ref = {
  field_path : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  resource_version : string prop option; [@option]
  uid : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__target_ref) -> ()

let yojson_of_endpoint__target_ref =
  (function
   | {
       field_path = v_field_path;
       name = v_name;
       namespace = v_namespace;
       resource_version = v_resource_version;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_version", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint__target_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__target_ref

[@@@deriving.end]

type endpoint = {
  addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hostname : string prop option; [@option]
  node_name : string prop option; [@option]
  zone : string prop option; [@option]
  condition : endpoint__condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_ref : endpoint__target_ref list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       addresses = v_addresses;
       hostname = v_hostname;
       node_name = v_node_name;
       zone = v_zone;
       condition = v_condition;
       target_ref = v_target_ref;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_ref then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint__target_ref)
               v_target_ref
           in
           let bnd = "target_ref", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_addresses
           in
           let bnd = "addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type metadata = {
  annotations : string prop Tf_core.assoc option; [@option]
  generate_name : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       generate_name = v_generate_name;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type port = {
  app_protocol : string prop;
  name : string prop option; [@option]
  port : string prop;
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : port) -> ()

let yojson_of_port =
  (function
   | {
       app_protocol = v_app_protocol;
       name = v_name;
       port = v_port;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_protocol in
         ("app_protocol", arg) :: bnds
       in
       `Assoc bnds
    : port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_port

[@@@deriving.end]

type kubernetes_endpoint_slice_v1 = {
  address_type : string prop;
  id : string prop option; [@option]
  endpoint : endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  port : port list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_endpoint_slice_v1) -> ()

let yojson_of_kubernetes_endpoint_slice_v1 =
  (function
   | {
       address_type = v_address_type;
       id = v_id;
       endpoint = v_endpoint;
       metadata = v_metadata;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_port then bnds
         else
           let arg = (yojson_of_list yojson_of_port) v_port in
           let bnd = "port", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint) v_endpoint
           in
           let bnd = "endpoint", arg in
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
         let arg = yojson_of_prop yojson_of_string v_address_type in
         ("address_type", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_endpoint_slice_v1 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_endpoint_slice_v1

[@@@deriving.end]

let endpoint__condition ?ready ?serving ?terminating () :
    endpoint__condition =
  { ready; serving; terminating }

let endpoint__target_ref ?field_path ?namespace ?resource_version
    ?uid ~name () : endpoint__target_ref =
  { field_path; name; namespace; resource_version; uid }

let endpoint ?hostname ?node_name ?zone ?(condition = [])
    ?(target_ref = []) ~addresses () : endpoint =
  { addresses; hostname; node_name; zone; condition; target_ref }

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let port ?name ?protocol ~app_protocol ~port () : port =
  { app_protocol; name; port; protocol }

let kubernetes_endpoint_slice_v1 ?id ~address_type ~endpoint
    ~metadata ~port () : kubernetes_endpoint_slice_v1 =
  { address_type; id; endpoint; metadata; port }

type t = {
  tf_name : string;
  address_type : string prop;
  id : string prop;
}

let make ?id ~address_type ~endpoint ~metadata ~port __id =
  let __type = "kubernetes_endpoint_slice_v1" in
  let __attrs =
    ({
       tf_name = __id;
       address_type = Prop.computed __type __id "address_type";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_endpoint_slice_v1
        (kubernetes_endpoint_slice_v1 ?id ~address_type ~endpoint
           ~metadata ~port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~address_type ~endpoint ~metadata ~port
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~address_type ~endpoint ~metadata ~port __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
