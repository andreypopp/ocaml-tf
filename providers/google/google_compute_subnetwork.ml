(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_config = {
  aggregation_interval : string prop option; [@option]
  filter_expr : string prop option; [@option]
  flow_sampling : float prop option; [@option]
  metadata : string prop option; [@option]
  metadata_fields : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | {
       aggregation_interval = v_aggregation_interval;
       filter_expr = v_filter_expr;
       flow_sampling = v_flow_sampling;
       metadata = v_metadata;
       metadata_fields = v_metadata_fields;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metadata_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metadata_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_flow_sampling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "flow_sampling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_expr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_expr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aggregation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aggregation_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

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

type secondary_ip_range = {
  ip_cidr_range : string prop;
  range_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_ip_range) -> ()

let yojson_of_secondary_ip_range =
  (function
   | { ip_cidr_range = v_ip_cidr_range; range_name = v_range_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range_name in
         ("range_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
       in
       `Assoc bnds
    : secondary_ip_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_ip_range

[@@@deriving.end]

type google_compute_subnetwork = {
  description : string prop option; [@option]
  external_ipv6_prefix : string prop option; [@option]
  id : string prop option; [@option]
  ip_cidr_range : string prop;
  ipv6_access_type : string prop option; [@option]
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop option; [@option]
  private_ipv6_google_access : string prop option; [@option]
  project : string prop option; [@option]
  purpose : string prop option; [@option]
  region : string prop option; [@option]
  role : string prop option; [@option]
  secondary_ip_range : secondary_ip_range list option; [@option]
  stack_type : string prop option; [@option]
  log_config : log_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_subnetwork) -> ()

let yojson_of_google_compute_subnetwork =
  (function
   | {
       description = v_description;
       external_ipv6_prefix = v_external_ipv6_prefix;
       id = v_id;
       ip_cidr_range = v_ip_cidr_range;
       ipv6_access_type = v_ipv6_access_type;
       name = v_name;
       network = v_network;
       private_ip_google_access = v_private_ip_google_access;
       private_ipv6_google_access = v_private_ipv6_google_access;
       project = v_project;
       purpose = v_purpose;
       region = v_region;
       role = v_role;
       secondary_ip_range = v_secondary_ip_range;
       stack_type = v_stack_type;
       log_config = v_log_config;
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
         let arg =
           yojson_of_list yojson_of_log_config v_log_config
         in
         ("log_config", arg) :: bnds
       in
       let bnds =
         match v_stack_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_secondary_ip_range v
             in
             let bnd = "secondary_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
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
         match v_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose", arg in
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
         match v_private_ipv6_google_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ipv6_google_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_google_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_ip_google_access", arg in
             bnd :: bnds
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
         match v_ipv6_access_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_access_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
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
         match v_external_ipv6_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_ipv6_prefix", arg in
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
    : google_compute_subnetwork -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_subnetwork

[@@@deriving.end]

let log_config ?aggregation_interval ?filter_expr ?flow_sampling
    ?metadata ?metadata_fields () : log_config =
  {
    aggregation_interval;
    filter_expr;
    flow_sampling;
    metadata;
    metadata_fields;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_subnetwork ?description ?external_ipv6_prefix ?id
    ?ipv6_access_type ?private_ip_google_access
    ?private_ipv6_google_access ?project ?purpose ?region ?role
    ?secondary_ip_range ?stack_type ?(log_config = []) ?timeouts
    ~ip_cidr_range ~name ~network () : google_compute_subnetwork =
  {
    description;
    external_ipv6_prefix;
    id;
    ip_cidr_range;
    ipv6_access_type;
    name;
    network;
    private_ip_google_access;
    private_ipv6_google_access;
    project;
    purpose;
    region;
    role;
    secondary_ip_range;
    stack_type;
    log_config;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  external_ipv6_prefix : string prop;
  fingerprint : string prop;
  gateway_address : string prop;
  id : string prop;
  internal_ipv6_prefix : string prop;
  ip_cidr_range : string prop;
  ipv6_access_type : string prop;
  ipv6_cidr_range : string prop;
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  role : string prop;
  secondary_ip_range : secondary_ip_range list prop;
  self_link : string prop;
  stack_type : string prop;
}

let make ?description ?external_ipv6_prefix ?id ?ipv6_access_type
    ?private_ip_google_access ?private_ipv6_google_access ?project
    ?purpose ?region ?role ?secondary_ip_range ?stack_type
    ?(log_config = []) ?timeouts ~ip_cidr_range ~name ~network __id =
  let __type = "google_compute_subnetwork" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       external_ipv6_prefix =
         Prop.computed __type __id "external_ipv6_prefix";
       fingerprint = Prop.computed __type __id "fingerprint";
       gateway_address = Prop.computed __type __id "gateway_address";
       id = Prop.computed __type __id "id";
       internal_ipv6_prefix =
         Prop.computed __type __id "internal_ipv6_prefix";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       ipv6_access_type =
         Prop.computed __type __id "ipv6_access_type";
       ipv6_cidr_range = Prop.computed __type __id "ipv6_cidr_range";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       private_ip_google_access =
         Prop.computed __type __id "private_ip_google_access";
       private_ipv6_google_access =
         Prop.computed __type __id "private_ipv6_google_access";
       project = Prop.computed __type __id "project";
       purpose = Prop.computed __type __id "purpose";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
       secondary_ip_range =
         Prop.computed __type __id "secondary_ip_range";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_subnetwork
        (google_compute_subnetwork ?description ?external_ipv6_prefix
           ?id ?ipv6_access_type ?private_ip_google_access
           ?private_ipv6_google_access ?project ?purpose ?region
           ?role ?secondary_ip_range ?stack_type ~log_config
           ?timeouts ~ip_cidr_range ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?external_ipv6_prefix ?id
    ?ipv6_access_type ?private_ip_google_access
    ?private_ipv6_google_access ?project ?purpose ?region ?role
    ?secondary_ip_range ?stack_type ?(log_config = []) ?timeouts
    ~ip_cidr_range ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?external_ipv6_prefix ?id ?ipv6_access_type
      ?private_ip_google_access ?private_ipv6_google_access ?project
      ?purpose ?region ?role ?secondary_ip_range ?stack_type
      ~log_config ?timeouts ~ip_cidr_range ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
