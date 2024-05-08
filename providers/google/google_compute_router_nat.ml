(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_config = { enable : bool prop; filter : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type rules__action = {
  source_nat_active_ips : string prop list option; [@option]
  source_nat_drain_ips : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__action) -> ()

let yojson_of_rules__action =
  (function
   | {
       source_nat_active_ips = v_source_nat_active_ips;
       source_nat_drain_ips = v_source_nat_drain_ips;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_nat_drain_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_nat_drain_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_nat_active_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_nat_active_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action

[@@@deriving.end]

type rules = {
  description : string prop option; [@option]
  match_ : string prop; [@key "match"]
  rule_number : float prop;
  action : rules__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       description = v_description;
       match_ = v_match_;
       rule_number = v_rule_number;
       action = v_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_match_ in
         ("match", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type subnetwork = {
  name : string prop;
  secondary_ip_range_names : string prop list option; [@option]
  source_ip_ranges_to_nat : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnetwork) -> ()

let yojson_of_subnetwork =
  (function
   | {
       name = v_name;
       secondary_ip_range_names = v_secondary_ip_range_names;
       source_ip_ranges_to_nat = v_source_ip_ranges_to_nat;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_ip_ranges_to_nat then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_ip_ranges_to_nat
           in
           let bnd = "source_ip_ranges_to_nat", arg in
           bnd :: bnds
       in
       let bnds =
         match v_secondary_ip_range_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secondary_ip_range_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : subnetwork -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnetwork

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type google_compute_router_nat = {
  drain_nat_ips : string prop list option; [@option]
  enable_dynamic_port_allocation : bool prop option; [@option]
  enable_endpoint_independent_mapping : bool prop option; [@option]
  icmp_idle_timeout_sec : float prop option; [@option]
  id : string prop option; [@option]
  max_ports_per_vm : float prop option; [@option]
  min_ports_per_vm : float prop option; [@option]
  name : string prop;
  nat_ip_allocate_option : string prop option; [@option]
  nat_ips : string prop list option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  router : string prop;
  source_subnetwork_ip_ranges_to_nat : string prop;
  tcp_established_idle_timeout_sec : float prop option; [@option]
  tcp_time_wait_timeout_sec : float prop option; [@option]
  tcp_transitory_idle_timeout_sec : float prop option; [@option]
  udp_idle_timeout_sec : float prop option; [@option]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rules : rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnetwork : subnetwork list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router_nat) -> ()

let yojson_of_google_compute_router_nat =
  (function
   | {
       drain_nat_ips = v_drain_nat_ips;
       enable_dynamic_port_allocation =
         v_enable_dynamic_port_allocation;
       enable_endpoint_independent_mapping =
         v_enable_endpoint_independent_mapping;
       icmp_idle_timeout_sec = v_icmp_idle_timeout_sec;
       id = v_id;
       max_ports_per_vm = v_max_ports_per_vm;
       min_ports_per_vm = v_min_ports_per_vm;
       name = v_name;
       nat_ip_allocate_option = v_nat_ip_allocate_option;
       nat_ips = v_nat_ips;
       project = v_project;
       region = v_region;
       router = v_router;
       source_subnetwork_ip_ranges_to_nat =
         v_source_subnetwork_ip_ranges_to_nat;
       tcp_established_idle_timeout_sec =
         v_tcp_established_idle_timeout_sec;
       tcp_time_wait_timeout_sec = v_tcp_time_wait_timeout_sec;
       tcp_transitory_idle_timeout_sec =
         v_tcp_transitory_idle_timeout_sec;
       udp_idle_timeout_sec = v_udp_idle_timeout_sec;
       log_config = v_log_config;
       rules = v_rules;
       subnetwork = v_subnetwork;
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
         if Stdlib.( = ) [] v_subnetwork then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subnetwork) v_subnetwork
           in
           let bnd = "subnetwork", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg = (yojson_of_list yojson_of_rules) v_rules in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_config) v_log_config
           in
           let bnd = "log_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_udp_idle_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "udp_idle_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_transitory_idle_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tcp_transitory_idle_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_time_wait_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tcp_time_wait_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_established_idle_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tcp_established_idle_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_subnetwork_ip_ranges_to_nat
         in
         ("source_subnetwork_ip_ranges_to_nat", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_router in
         ("router", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nat_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "nat_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nat_ip_allocate_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_ip_allocate_option", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_ports_per_vm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_ports_per_vm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ports_per_vm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_ports_per_vm", arg in
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
         match v_icmp_idle_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "icmp_idle_timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_endpoint_independent_mapping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_endpoint_independent_mapping", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dynamic_port_allocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dynamic_port_allocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drain_nat_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "drain_nat_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_router_nat -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router_nat

[@@@deriving.end]

let log_config ~enable ~filter () : log_config = { enable; filter }

let rules__action ?source_nat_active_ips ?source_nat_drain_ips () :
    rules__action =
  { source_nat_active_ips; source_nat_drain_ips }

let rules ?description ?(action = []) ~match_ ~rule_number () : rules
    =
  { description; match_; rule_number; action }

let subnetwork ?secondary_ip_range_names ~name
    ~source_ip_ranges_to_nat () : subnetwork =
  { name; secondary_ip_range_names; source_ip_ranges_to_nat }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_router_nat ?drain_nat_ips
    ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?(log_config = []) ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~rules ~subnetwork () :
    google_compute_router_nat =
  {
    drain_nat_ips;
    enable_dynamic_port_allocation;
    enable_endpoint_independent_mapping;
    icmp_idle_timeout_sec;
    id;
    max_ports_per_vm;
    min_ports_per_vm;
    name;
    nat_ip_allocate_option;
    nat_ips;
    project;
    region;
    router;
    source_subnetwork_ip_ranges_to_nat;
    tcp_established_idle_timeout_sec;
    tcp_time_wait_timeout_sec;
    tcp_transitory_idle_timeout_sec;
    udp_idle_timeout_sec;
    log_config;
    rules;
    subnetwork;
    timeouts;
  }

type t = {
  tf_name : string;
  drain_nat_ips : string list prop;
  enable_dynamic_port_allocation : bool prop;
  enable_endpoint_independent_mapping : bool prop;
  icmp_idle_timeout_sec : float prop;
  id : string prop;
  max_ports_per_vm : float prop;
  min_ports_per_vm : float prop;
  name : string prop;
  nat_ip_allocate_option : string prop;
  nat_ips : string list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  source_subnetwork_ip_ranges_to_nat : string prop;
  tcp_established_idle_timeout_sec : float prop;
  tcp_time_wait_timeout_sec : float prop;
  tcp_transitory_idle_timeout_sec : float prop;
  udp_idle_timeout_sec : float prop;
}

let make ?drain_nat_ips ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?(log_config = []) ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~rules ~subnetwork __id =
  let __type = "google_compute_router_nat" in
  let __attrs =
    ({
       tf_name = __id;
       drain_nat_ips = Prop.computed __type __id "drain_nat_ips";
       enable_dynamic_port_allocation =
         Prop.computed __type __id "enable_dynamic_port_allocation";
       enable_endpoint_independent_mapping =
         Prop.computed __type __id
           "enable_endpoint_independent_mapping";
       icmp_idle_timeout_sec =
         Prop.computed __type __id "icmp_idle_timeout_sec";
       id = Prop.computed __type __id "id";
       max_ports_per_vm =
         Prop.computed __type __id "max_ports_per_vm";
       min_ports_per_vm =
         Prop.computed __type __id "min_ports_per_vm";
       name = Prop.computed __type __id "name";
       nat_ip_allocate_option =
         Prop.computed __type __id "nat_ip_allocate_option";
       nat_ips = Prop.computed __type __id "nat_ips";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       source_subnetwork_ip_ranges_to_nat =
         Prop.computed __type __id
           "source_subnetwork_ip_ranges_to_nat";
       tcp_established_idle_timeout_sec =
         Prop.computed __type __id "tcp_established_idle_timeout_sec";
       tcp_time_wait_timeout_sec =
         Prop.computed __type __id "tcp_time_wait_timeout_sec";
       tcp_transitory_idle_timeout_sec =
         Prop.computed __type __id "tcp_transitory_idle_timeout_sec";
       udp_idle_timeout_sec =
         Prop.computed __type __id "udp_idle_timeout_sec";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router_nat
        (google_compute_router_nat ?drain_nat_ips
           ?enable_dynamic_port_allocation
           ?enable_endpoint_independent_mapping
           ?icmp_idle_timeout_sec ?id ?max_ports_per_vm
           ?min_ports_per_vm ?nat_ip_allocate_option ?nat_ips
           ?project ?region ?tcp_established_idle_timeout_sec
           ?tcp_time_wait_timeout_sec
           ?tcp_transitory_idle_timeout_sec ?udp_idle_timeout_sec
           ~log_config ?timeouts ~name ~router
           ~source_subnetwork_ip_ranges_to_nat ~rules ~subnetwork ());
    attrs = __attrs;
  }

let register ?tf_module ?drain_nat_ips
    ?enable_dynamic_port_allocation
    ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
    ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
    ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
    ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
    ?udp_idle_timeout_sec ?(log_config = []) ?timeouts ~name ~router
    ~source_subnetwork_ip_ranges_to_nat ~rules ~subnetwork __id =
  let (r : _ Tf_core.resource) =
    make ?drain_nat_ips ?enable_dynamic_port_allocation
      ?enable_endpoint_independent_mapping ?icmp_idle_timeout_sec ?id
      ?max_ports_per_vm ?min_ports_per_vm ?nat_ip_allocate_option
      ?nat_ips ?project ?region ?tcp_established_idle_timeout_sec
      ?tcp_time_wait_timeout_sec ?tcp_transitory_idle_timeout_sec
      ?udp_idle_timeout_sec ~log_config ?timeouts ~name ~router
      ~source_subnetwork_ip_ranges_to_nat ~rules ~subnetwork __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
