(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata_filters__filter_labels = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_filters__filter_labels) -> ()

let yojson_of_metadata_filters__filter_labels =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata_filters__filter_labels ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_filters__filter_labels

[@@@deriving.end]

type metadata_filters = {
  filter_match_criteria : string prop;
  filter_labels : metadata_filters__filter_labels list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_filters) -> ()

let yojson_of_metadata_filters =
  (function
   | {
       filter_match_criteria = v_filter_match_criteria;
       filter_labels = v_filter_labels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter_labels then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_metadata_filters__filter_labels)
               v_filter_labels
           in
           let bnd = "filter_labels", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filter_match_criteria
         in
         ("filter_match_criteria", arg) :: bnds
       in
       `Assoc bnds
    : metadata_filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_filters

[@@@deriving.end]

type service_directory_registrations = {
  namespace : string prop option; [@option]
  service_directory_region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_directory_registrations) -> ()

let yojson_of_service_directory_registrations =
  (function
   | {
       namespace = v_namespace;
       service_directory_region = v_service_directory_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_directory_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_directory_region", arg in
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
       `Assoc bnds
    : service_directory_registrations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_directory_registrations

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

type google_compute_global_forwarding_rule = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  ip_protocol : string prop option; [@option]
  ip_version : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  load_balancing_scheme : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  no_automate_dns_zone : bool prop option; [@option]
  port_range : string prop option; [@option]
  project : string prop option; [@option]
  source_ip_ranges : string prop list option; [@option]
  subnetwork : string prop option; [@option]
  target : string prop;
  metadata_filters : metadata_filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_directory_registrations :
    service_directory_registrations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_global_forwarding_rule) -> ()

let yojson_of_google_compute_global_forwarding_rule =
  (function
   | {
       description = v_description;
       id = v_id;
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       ip_version = v_ip_version;
       labels = v_labels;
       load_balancing_scheme = v_load_balancing_scheme;
       name = v_name;
       network = v_network;
       no_automate_dns_zone = v_no_automate_dns_zone;
       port_range = v_port_range;
       project = v_project;
       source_ip_ranges = v_source_ip_ranges;
       subnetwork = v_subnetwork;
       target = v_target;
       metadata_filters = v_metadata_filters;
       service_directory_registrations =
         v_service_directory_registrations;
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
         if Stdlib.( = ) [] v_service_directory_registrations then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_directory_registrations)
               v_service_directory_registrations
           in
           let bnd = "service_directory_registrations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata_filters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata_filters)
               v_metadata_filters
           in
           let bnd = "metadata_filters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_ranges", arg in
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
         match v_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "port_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_automate_dns_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_automate_dns_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_load_balancing_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "load_balancing_scheme", arg in
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
         match v_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_global_forwarding_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_global_forwarding_rule

[@@@deriving.end]

let metadata_filters__filter_labels ~name ~value () :
    metadata_filters__filter_labels =
  { name; value }

let metadata_filters ~filter_match_criteria ~filter_labels () :
    metadata_filters =
  { filter_match_criteria; filter_labels }

let service_directory_registrations ?namespace
    ?service_directory_region () : service_directory_registrations =
  { namespace; service_directory_region }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_global_forwarding_rule ?description ?id
    ?ip_address ?ip_protocol ?ip_version ?labels
    ?load_balancing_scheme ?network ?no_automate_dns_zone ?port_range
    ?project ?source_ip_ranges ?subnetwork ?(metadata_filters = [])
    ?(service_directory_registrations = []) ?timeouts ~name ~target
    () : google_compute_global_forwarding_rule =
  {
    description;
    id;
    ip_address;
    ip_protocol;
    ip_version;
    labels;
    load_balancing_scheme;
    name;
    network;
    no_automate_dns_zone;
    port_range;
    project;
    source_ip_ranges;
    subnetwork;
    target;
    metadata_filters;
    service_directory_registrations;
    timeouts;
  }

type t = {
  tf_name : string;
  base_forwarding_rule : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  self_link : string prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?ip_address ?ip_protocol ?ip_version
    ?labels ?load_balancing_scheme ?network ?no_automate_dns_zone
    ?port_range ?project ?source_ip_ranges ?subnetwork
    ?(metadata_filters = []) ?(service_directory_registrations = [])
    ?timeouts ~name ~target __id =
  let __type = "google_compute_global_forwarding_rule" in
  let __attrs =
    ({
       tf_name = __id;
       base_forwarding_rule =
         Prop.computed __type __id "base_forwarding_rule";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       ip_version = Prop.computed __type __id "ip_version";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       load_balancing_scheme =
         Prop.computed __type __id "load_balancing_scheme";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       no_automate_dns_zone =
         Prop.computed __type __id "no_automate_dns_zone";
       port_range = Prop.computed __type __id "port_range";
       project = Prop.computed __type __id "project";
       psc_connection_id =
         Prop.computed __type __id "psc_connection_id";
       psc_connection_status =
         Prop.computed __type __id "psc_connection_status";
       self_link = Prop.computed __type __id "self_link";
       source_ip_ranges =
         Prop.computed __type __id "source_ip_ranges";
       subnetwork = Prop.computed __type __id "subnetwork";
       target = Prop.computed __type __id "target";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_global_forwarding_rule
        (google_compute_global_forwarding_rule ?description ?id
           ?ip_address ?ip_protocol ?ip_version ?labels
           ?load_balancing_scheme ?network ?no_automate_dns_zone
           ?port_range ?project ?source_ip_ranges ?subnetwork
           ~metadata_filters ~service_directory_registrations
           ?timeouts ~name ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ip_address ?ip_protocol
    ?ip_version ?labels ?load_balancing_scheme ?network
    ?no_automate_dns_zone ?port_range ?project ?source_ip_ranges
    ?subnetwork ?(metadata_filters = [])
    ?(service_directory_registrations = []) ?timeouts ~name ~target
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ip_address ?ip_protocol ?ip_version
      ?labels ?load_balancing_scheme ?network ?no_automate_dns_zone
      ?port_range ?project ?source_ip_ranges ?subnetwork
      ~metadata_filters ~service_directory_registrations ?timeouts
      ~name ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
