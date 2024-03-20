(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
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

type spec__session_affinity_config__client_ip = {
  timeout_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__session_affinity_config__client_ip) -> ()

let yojson_of_spec__session_affinity_config__client_ip =
  (function
   | { timeout_seconds = v_timeout_seconds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_seconds
         in
         ("timeout_seconds", arg) :: bnds
       in
       `Assoc bnds
    : spec__session_affinity_config__client_ip ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__session_affinity_config__client_ip

[@@@deriving.end]

type spec__session_affinity_config = {
  client_ip : spec__session_affinity_config__client_ip list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__session_affinity_config) -> ()

let yojson_of_spec__session_affinity_config =
  (function
   | { client_ip = v_client_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__session_affinity_config__client_ip
             v_client_ip
         in
         ("client_ip", arg) :: bnds
       in
       `Assoc bnds
    : spec__session_affinity_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__session_affinity_config

[@@@deriving.end]

type spec__port = {
  app_protocol : string prop;
  name : string prop;
  node_port : float prop;
  port : float prop;
  protocol : string prop;
  target_port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__port) -> ()

let yojson_of_spec__port =
  (function
   | {
       app_protocol = v_app_protocol;
       name = v_name;
       node_port = v_node_port;
       port = v_port;
       protocol = v_protocol;
       target_port = v_target_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_port in
         ("target_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_port in
         ("node_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_protocol in
         ("app_protocol", arg) :: bnds
       in
       `Assoc bnds
    : spec__port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__port

[@@@deriving.end]

type spec = {
  allocate_load_balancer_node_ports : bool prop;
  cluster_ip : string prop;
  cluster_ips : string prop list;
  external_ips : string prop list;
  external_name : string prop;
  external_traffic_policy : string prop;
  health_check_node_port : float prop;
  internal_traffic_policy : string prop;
  ip_families : string prop list;
  ip_family_policy : string prop;
  load_balancer_class : string prop;
  load_balancer_ip : string prop;
  load_balancer_source_ranges : string prop list;
  port : spec__port list;
  publish_not_ready_addresses : bool prop;
  selector : (string * string prop) list;
  session_affinity : string prop;
  session_affinity_config : spec__session_affinity_config list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       allocate_load_balancer_node_ports =
         v_allocate_load_balancer_node_ports;
       cluster_ip = v_cluster_ip;
       cluster_ips = v_cluster_ips;
       external_ips = v_external_ips;
       external_name = v_external_name;
       external_traffic_policy = v_external_traffic_policy;
       health_check_node_port = v_health_check_node_port;
       internal_traffic_policy = v_internal_traffic_policy;
       ip_families = v_ip_families;
       ip_family_policy = v_ip_family_policy;
       load_balancer_class = v_load_balancer_class;
       load_balancer_ip = v_load_balancer_ip;
       load_balancer_source_ranges = v_load_balancer_source_ranges;
       port = v_port;
       publish_not_ready_addresses = v_publish_not_ready_addresses;
       selector = v_selector;
       session_affinity = v_session_affinity;
       session_affinity_config = v_session_affinity_config;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__session_affinity_config
             v_session_affinity_config
         in
         ("session_affinity_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_affinity
         in
         ("session_affinity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_selector
         in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_publish_not_ready_addresses
         in
         ("publish_not_ready_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__port v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_load_balancer_source_ranges
         in
         ("load_balancer_source_ranges", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_ip
         in
         ("load_balancer_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_class
         in
         ("load_balancer_class", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_family_policy
         in
         ("ip_family_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_families
         in
         ("ip_families", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_internal_traffic_policy
         in
         ("internal_traffic_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_health_check_node_port
         in
         ("health_check_node_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_external_traffic_policy
         in
         ("external_traffic_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_external_name in
         ("external_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_external_ips
         in
         ("external_ips", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_cluster_ips
         in
         ("cluster_ips", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_ip in
         ("cluster_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_allocate_load_balancer_node_ports
         in
         ("allocate_load_balancer_node_ports", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type status__load_balancer__ingress = {
  hostname : string prop;
  ip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__load_balancer__ingress) -> ()

let yojson_of_status__load_balancer__ingress =
  (function
   | { hostname = v_hostname; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : status__load_balancer__ingress ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__load_balancer__ingress

[@@@deriving.end]

type status__load_balancer = {
  ingress : status__load_balancer__ingress list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__load_balancer) -> ()

let yojson_of_status__load_balancer =
  (function
   | { ingress = v_ingress } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__load_balancer__ingress
             v_ingress
         in
         ("ingress", arg) :: bnds
       in
       `Assoc bnds
    : status__load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__load_balancer

[@@@deriving.end]

type status = { load_balancer : status__load_balancer list }
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { load_balancer = v_load_balancer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__load_balancer
             v_load_balancer
         in
         ("load_balancer", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type kubernetes_service = {
  id : string prop option; [@option]
  metadata : metadata list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_service) -> ()

let yojson_of_kubernetes_service =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : kubernetes_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_service

[@@@deriving.end]

let metadata ?annotations ?labels ?name ?namespace () : metadata =
  { annotations; labels; name; namespace }

let kubernetes_service ?id ~metadata () : kubernetes_service =
  { id; metadata }

type t = {
  id : string prop;
  spec : spec list prop;
  status : status list prop;
}

let make ?id ~metadata __id =
  let __type = "kubernetes_service" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       spec = Prop.computed __type __id "spec";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_service
        (kubernetes_service ?id ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
