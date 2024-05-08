(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rules__service_directory_registrations = {
  namespace : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__service_directory_registrations) -> ()

let yojson_of_rules__service_directory_registrations =
  (function
   | { namespace = v_namespace; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       `Assoc bnds
    : rules__service_directory_registrations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__service_directory_registrations

[@@@deriving.end]

type rules = {
  all_ports : bool prop;
  allow_global_access : bool prop;
  allow_psc_global_access : bool prop;
  backend_service : string prop;
  base_forwarding_rule : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string prop) list;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  is_mirroring_collector : bool prop;
  label_fingerprint : string prop;
  labels : (string * string prop) list;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  recreate_closed_psc : bool prop;
  region : string prop;
  self_link : string prop;
  service_directory_registrations :
    rules__service_directory_registrations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_label : string prop;
  service_name : string prop;
  source_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       all_ports = v_all_ports;
       allow_global_access = v_allow_global_access;
       allow_psc_global_access = v_allow_psc_global_access;
       backend_service = v_backend_service;
       base_forwarding_rule = v_base_forwarding_rule;
       creation_timestamp = v_creation_timestamp;
       description = v_description;
       effective_labels = v_effective_labels;
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       ip_version = v_ip_version;
       is_mirroring_collector = v_is_mirroring_collector;
       label_fingerprint = v_label_fingerprint;
       labels = v_labels;
       load_balancing_scheme = v_load_balancing_scheme;
       name = v_name;
       network = v_network;
       network_tier = v_network_tier;
       no_automate_dns_zone = v_no_automate_dns_zone;
       port_range = v_port_range;
       ports = v_ports;
       project = v_project;
       psc_connection_id = v_psc_connection_id;
       psc_connection_status = v_psc_connection_status;
       recreate_closed_psc = v_recreate_closed_psc;
       region = v_region;
       self_link = v_self_link;
       service_directory_registrations =
         v_service_directory_registrations;
       service_label = v_service_label;
       service_name = v_service_name;
       source_ip_ranges = v_source_ip_ranges;
       subnetwork = v_subnetwork;
       target = v_target;
       terraform_labels = v_terraform_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_terraform_labels
         in
         ("terraform_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_ip_ranges
           in
           let bnd = "source_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_label in
         ("service_label", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_directory_registrations then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rules__service_directory_registrations)
               v_service_directory_registrations
           in
           let bnd = "service_directory_registrations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_recreate_closed_psc
         in
         ("recreate_closed_psc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_psc_connection_status
         in
         ("psc_connection_status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_psc_connection_id
         in
         ("psc_connection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port_range in
         ("port_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_no_automate_dns_zone
         in
         ("no_automate_dns_zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_tier in
         ("network_tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancing_scheme
         in
         ("load_balancing_scheme", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_label_fingerprint
         in
         ("label_fingerprint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_is_mirroring_collector
         in
         ("is_mirroring_collector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_version in
         ("ip_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_effective_labels
         in
         ("effective_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_creation_timestamp
         in
         ("creation_timestamp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_base_forwarding_rule
         in
         ("base_forwarding_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backend_service
         in
         ("backend_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_psc_global_access
         in
         ("allow_psc_global_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_global_access
         in
         ("allow_global_access", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_all_ports in
         ("all_ports", arg) :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type google_compute_forwarding_rules = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_forwarding_rules) -> ()

let yojson_of_google_compute_forwarding_rules =
  (function
   | { id = v_id; project = v_project; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_forwarding_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_forwarding_rules

[@@@deriving.end]

let google_compute_forwarding_rules ?id ?project ?region () :
    google_compute_forwarding_rules =
  { id; project; region }

type t = {
  tf_name : string;
  id : string prop;
  project : string prop;
  region : string prop;
  rules : rules list prop;
}

let make ?id ?project ?region __id =
  let __type = "google_compute_forwarding_rules" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       rules = Prop.computed __type __id "rules";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_forwarding_rules
        (google_compute_forwarding_rules ?id ?project ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?project ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
