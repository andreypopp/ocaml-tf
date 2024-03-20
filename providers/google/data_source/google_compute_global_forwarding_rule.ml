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
  filter_labels : metadata_filters__filter_labels list;
  filter_match_criteria : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_filters) -> ()

let yojson_of_metadata_filters =
  (function
   | {
       filter_labels = v_filter_labels;
       filter_match_criteria = v_filter_match_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filter_match_criteria
         in
         ("filter_match_criteria", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metadata_filters__filter_labels
             v_filter_labels
         in
         ("filter_labels", arg) :: bnds
       in
       `Assoc bnds
    : metadata_filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_filters

[@@@deriving.end]

type service_directory_registrations = {
  namespace : string prop;
  service_directory_region : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_service_directory_region
         in
         ("service_directory_region", arg) :: bnds
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

type google_compute_global_forwarding_rule = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_global_forwarding_rule) -> ()

let yojson_of_google_compute_global_forwarding_rule =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : google_compute_global_forwarding_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_global_forwarding_rule

[@@@deriving.end]

let google_compute_global_forwarding_rule ?id ?project ~name () :
    google_compute_global_forwarding_rule =
  { id; name; project }

type t = {
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
  metadata_filters : metadata_filters list prop;
  name : string prop;
  network : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  self_link : string prop;
  service_directory_registrations :
    service_directory_registrations list prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?project ~name __id =
  let __type = "google_compute_global_forwarding_rule" in
  let __attrs =
    ({
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
       metadata_filters =
         Prop.computed __type __id "metadata_filters";
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
       service_directory_registrations =
         Prop.computed __type __id "service_directory_registrations";
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
        (google_compute_global_forwarding_rule ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
