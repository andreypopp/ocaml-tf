(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type subset__address = {
  hostname : string prop option; [@option]
  ip : string prop;
  node_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset__address) -> ()

let yojson_of_subset__address =
  (function
   | { hostname = v_hostname; ip = v_ip; node_name = v_node_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subset__address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset__address

[@@@deriving.end]

type subset__not_ready_address = {
  hostname : string prop option; [@option]
  ip : string prop;
  node_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset__not_ready_address) -> ()

let yojson_of_subset__not_ready_address =
  (function
   | { hostname = v_hostname; ip = v_ip; node_name = v_node_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         match v_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subset__not_ready_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset__not_ready_address

[@@@deriving.end]

type subset__port = {
  name : string prop option; [@option]
  port : float prop;
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset__port) -> ()

let yojson_of_subset__port =
  (function
   | { name = v_name; port = v_port; protocol = v_protocol } ->
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
         let arg = yojson_of_prop yojson_of_float v_port in
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
       `Assoc bnds
    : subset__port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset__port

[@@@deriving.end]

type subset = {
  address : subset__address list;
  not_ready_address : subset__not_ready_address list;
  port : subset__port list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset) -> ()

let yojson_of_subset =
  (function
   | {
       address = v_address;
       not_ready_address = v_not_ready_address;
       port = v_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_subset__port v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_subset__not_ready_address
             v_not_ready_address
         in
         ("not_ready_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_subset__address v_address
         in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : subset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset

[@@@deriving.end]

type kubernetes_endpoints_v1 = {
  id : string prop option; [@option]
  metadata : metadata list;
  subset : subset list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_endpoints_v1) -> ()

let yojson_of_kubernetes_endpoints_v1 =
  (function
   | { id = v_id; metadata = v_metadata; subset = v_subset } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_subset v_subset in
         ("subset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
    : kubernetes_endpoints_v1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_endpoints_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let subset__address ?hostname ?node_name ~ip () : subset__address =
  { hostname; ip; node_name }

let subset__not_ready_address ?hostname ?node_name ~ip () :
    subset__not_ready_address =
  { hostname; ip; node_name }

let subset__port ?name ?protocol ~port () : subset__port =
  { name; port; protocol }

let subset ~address ~not_ready_address ~port () : subset =
  { address; not_ready_address; port }

let kubernetes_endpoints_v1 ?id ~metadata ~subset () :
    kubernetes_endpoints_v1 =
  { id; metadata; subset }

type t = { id : string prop }

let make ?id ~metadata ~subset __id =
  let __type = "kubernetes_endpoints_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_endpoints_v1
        (kubernetes_endpoints_v1 ?id ~metadata ~subset ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~subset __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~subset __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
