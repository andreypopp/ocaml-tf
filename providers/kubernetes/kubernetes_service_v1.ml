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

type spec__port = {
  app_protocol : string prop option; [@option]
  name : string prop option; [@option]
  node_port : float prop option; [@option]
  port : float prop;
  protocol : string prop option; [@option]
  target_port : string prop option; [@option]
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
         match v_target_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_port", arg in
             bnd :: bnds
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
         match v_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_port", arg in
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
         match v_app_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_protocol", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__port

[@@@deriving.end]

type spec__session_affinity_config__client_ip = {
  timeout_seconds : float prop option; [@option]
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
         match v_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_seconds", arg in
             bnd :: bnds
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

type spec = {
  allocate_load_balancer_node_ports : bool prop option; [@option]
  cluster_ip : string prop option; [@option]
  cluster_ips : string prop list option; [@option]
  external_ips : string prop list option; [@option]
  external_name : string prop option; [@option]
  external_traffic_policy : string prop option; [@option]
  health_check_node_port : float prop option; [@option]
  internal_traffic_policy : string prop option; [@option]
  ip_families : string prop list option; [@option]
  ip_family_policy : string prop option; [@option]
  load_balancer_class : string prop option; [@option]
  load_balancer_ip : string prop option; [@option]
  load_balancer_source_ranges : string prop list option; [@option]
  publish_not_ready_addresses : bool prop option; [@option]
  selector : (string * string prop) list option; [@option]
  session_affinity : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  port : spec__port list;
  session_affinity_config : spec__session_affinity_config list;
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
       publish_not_ready_addresses = v_publish_not_ready_addresses;
       selector = v_selector;
       session_affinity = v_session_affinity;
       type_ = v_type_;
       port = v_port;
       session_affinity_config = v_session_affinity_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__session_affinity_config
             v_session_affinity_config
         in
         ("session_affinity_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__port v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
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
             let bnd = "selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publish_not_ready_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish_not_ready_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_source_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "load_balancer_source_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancer_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_family_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_family_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_families with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_families", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_traffic_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_traffic_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_node_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_node_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_traffic_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_traffic_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cluster_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocate_load_balancer_node_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allocate_load_balancer_node_ports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

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

type kubernetes_service_v1 = {
  id : string prop option; [@option]
  wait_for_load_balancer : bool prop option; [@option]
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_service_v1) -> ()

let yojson_of_kubernetes_service_v1 =
  (function
   | {
       id = v_id;
       wait_for_load_balancer = v_wait_for_load_balancer;
       metadata = v_metadata;
       spec = v_spec;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
       in
       let bnds =
         match v_wait_for_load_balancer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_load_balancer", arg in
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
    : kubernetes_service_v1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_service_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__port ?app_protocol ?name ?node_port ?protocol ?target_port
    ~port () : spec__port =
  { app_protocol; name; node_port; port; protocol; target_port }

let spec__session_affinity_config__client_ip ?timeout_seconds () :
    spec__session_affinity_config__client_ip =
  { timeout_seconds }

let spec__session_affinity_config ~client_ip () :
    spec__session_affinity_config =
  { client_ip }

let spec ?allocate_load_balancer_node_ports ?cluster_ip ?cluster_ips
    ?external_ips ?external_name ?external_traffic_policy
    ?health_check_node_port ?internal_traffic_policy ?ip_families
    ?ip_family_policy ?load_balancer_class ?load_balancer_ip
    ?load_balancer_source_ranges ?publish_not_ready_addresses
    ?selector ?session_affinity ?type_ ~port ~session_affinity_config
    () : spec =
  {
    allocate_load_balancer_node_ports;
    cluster_ip;
    cluster_ips;
    external_ips;
    external_name;
    external_traffic_policy;
    health_check_node_port;
    internal_traffic_policy;
    ip_families;
    ip_family_policy;
    load_balancer_class;
    load_balancer_ip;
    load_balancer_source_ranges;
    publish_not_ready_addresses;
    selector;
    session_affinity;
    type_;
    port;
    session_affinity_config;
  }

let timeouts ?create () : timeouts = { create }

let kubernetes_service_v1 ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec () : kubernetes_service_v1 =
  { id; wait_for_load_balancer; metadata; spec; timeouts }

type t = {
  id : string prop;
  status : status list prop;
  wait_for_load_balancer : bool prop;
}

let make ?id ?wait_for_load_balancer ?timeouts ~metadata ~spec __id =
  let __type = "kubernetes_service_v1" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       wait_for_load_balancer =
         Prop.computed __type __id "wait_for_load_balancer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_service_v1
        (kubernetes_service_v1 ?id ?wait_for_load_balancer ?timeouts
           ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?wait_for_load_balancer ?timeouts ~metadata ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
