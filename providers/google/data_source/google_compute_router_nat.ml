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
  source_nat_active_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  source_nat_drain_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_source_nat_drain_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_nat_drain_ips
           in
           let bnd = "source_nat_drain_ips", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source_nat_active_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_nat_active_ips
           in
           let bnd = "source_nat_active_ips", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__action

[@@@deriving.end]

type rules = {
  action : rules__action list;
      [@default []] [@yojson_drop_default ( = )]
  description : string prop;
  match_ : string prop; [@key "match"]
  rule_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       action = v_action;
       description = v_description;
       match_ = v_match_;
       rule_number = v_rule_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if [] = v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rules__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type subnetwork = {
  name : string prop;
  secondary_ip_range_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  source_ip_ranges_to_nat : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_source_ip_ranges_to_nat then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_ip_ranges_to_nat
           in
           let bnd = "source_ip_ranges_to_nat", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secondary_ip_range_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_secondary_ip_range_names
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

type google_compute_router_nat = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  router : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router_nat) -> ()

let yojson_of_google_compute_router_nat =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       router = v_router;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : google_compute_router_nat -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router_nat

[@@@deriving.end]

let google_compute_router_nat ?id ?project ?region ~name ~router () :
    google_compute_router_nat =
  { id; name; project; region; router }

type t = {
  tf_name : string;
  drain_nat_ips : string list prop;
  enable_dynamic_port_allocation : bool prop;
  enable_endpoint_independent_mapping : bool prop;
  icmp_idle_timeout_sec : float prop;
  id : string prop;
  log_config : log_config list prop;
  max_ports_per_vm : float prop;
  min_ports_per_vm : float prop;
  name : string prop;
  nat_ip_allocate_option : string prop;
  nat_ips : string list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  rules : rules list prop;
  source_subnetwork_ip_ranges_to_nat : string prop;
  subnetwork : subnetwork list prop;
  tcp_established_idle_timeout_sec : float prop;
  tcp_time_wait_timeout_sec : float prop;
  tcp_transitory_idle_timeout_sec : float prop;
  udp_idle_timeout_sec : float prop;
}

let make ?id ?project ?region ~name ~router __id =
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
       log_config = Prop.computed __type __id "log_config";
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
       rules = Prop.computed __type __id "rules";
       source_subnetwork_ip_ranges_to_nat =
         Prop.computed __type __id
           "source_subnetwork_ip_ranges_to_nat";
       subnetwork = Prop.computed __type __id "subnetwork";
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
        (google_compute_router_nat ?id ?project ?region ~name ~router
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name ~router __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name ~router __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
