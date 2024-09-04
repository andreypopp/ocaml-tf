(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_directory_registrations = {
  namespace : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_directory_registrations) -> ()

let yojson_of_service_directory_registrations =
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
    : service_directory_registrations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_directory_registrations

[@@@deriving.end]

type google_compute_forwarding_rule = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_forwarding_rule) -> ()

let yojson_of_google_compute_forwarding_rule =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
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
    : google_compute_forwarding_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_forwarding_rule

[@@@deriving.end]

let google_compute_forwarding_rule ?id ?project ?region ~name () :
    google_compute_forwarding_rule =
  { id; name; project; region }

type t = {
  tf_name : string;
  all_ports : bool prop;
  allow_global_access : bool prop;
  allow_psc_global_access : bool prop;
  backend_service : string prop;
  base_forwarding_rule : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  is_mirroring_collector : bool prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  ports : string list prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  recreate_closed_psc : bool prop;
  region : string prop;
  self_link : string prop;
  service_directory_registrations :
    service_directory_registrations list prop;
  service_label : string prop;
  service_name : string prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_forwarding_rule" in
  let __attrs =
    ({
       tf_name = __id;
       all_ports = Prop.computed __type __id "all_ports";
       allow_global_access =
         Prop.computed __type __id "allow_global_access";
       allow_psc_global_access =
         Prop.computed __type __id "allow_psc_global_access";
       backend_service = Prop.computed __type __id "backend_service";
       base_forwarding_rule =
         Prop.computed __type __id "base_forwarding_rule";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       ip_version = Prop.computed __type __id "ip_version";
       is_mirroring_collector =
         Prop.computed __type __id "is_mirroring_collector";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       load_balancing_scheme =
         Prop.computed __type __id "load_balancing_scheme";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_tier = Prop.computed __type __id "network_tier";
       no_automate_dns_zone =
         Prop.computed __type __id "no_automate_dns_zone";
       port_range = Prop.computed __type __id "port_range";
       ports = Prop.computed __type __id "ports";
       project = Prop.computed __type __id "project";
       psc_connection_id =
         Prop.computed __type __id "psc_connection_id";
       psc_connection_status =
         Prop.computed __type __id "psc_connection_status";
       recreate_closed_psc =
         Prop.computed __type __id "recreate_closed_psc";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       service_directory_registrations =
         Prop.computed __type __id "service_directory_registrations";
       service_label = Prop.computed __type __id "service_label";
       service_name = Prop.computed __type __id "service_name";
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
      yojson_of_google_compute_forwarding_rule
        (google_compute_forwarding_rule ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
