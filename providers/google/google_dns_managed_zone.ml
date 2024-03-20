(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloud_logging_config = { enable_logging : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_logging_config) -> ()

let yojson_of_cloud_logging_config =
  (function
   | { enable_logging = v_enable_logging } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable_logging in
         ("enable_logging", arg) :: bnds
       in
       `Assoc bnds
    : cloud_logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_logging_config

[@@@deriving.end]

type dnssec_config__default_key_specs = {
  algorithm : string prop option; [@option]
  key_length : float prop option; [@option]
  key_type : string prop option; [@option]
  kind : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnssec_config__default_key_specs) -> ()

let yojson_of_dnssec_config__default_key_specs =
  (function
   | {
       algorithm = v_algorithm;
       key_length = v_key_length;
       key_type = v_key_type;
       kind = v_kind;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnssec_config__default_key_specs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnssec_config__default_key_specs

[@@@deriving.end]

type dnssec_config = {
  kind : string prop option; [@option]
  non_existence : string prop option; [@option]
  state : string prop option; [@option]
  default_key_specs : dnssec_config__default_key_specs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnssec_config) -> ()

let yojson_of_dnssec_config =
  (function
   | {
       kind = v_kind;
       non_existence = v_non_existence;
       state = v_state;
       default_key_specs = v_default_key_specs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dnssec_config__default_key_specs
             v_default_key_specs
         in
         ("default_key_specs", arg) :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_existence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "non_existence", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnssec_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnssec_config

[@@@deriving.end]

type forwarding_config__target_name_servers = {
  forwarding_path : string prop option; [@option]
  ipv4_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forwarding_config__target_name_servers) -> ()

let yojson_of_forwarding_config__target_name_servers =
  (function
   | {
       forwarding_path = v_forwarding_path;
       ipv4_address = v_ipv4_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4_address in
         ("ipv4_address", arg) :: bnds
       in
       let bnds =
         match v_forwarding_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forwarding_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : forwarding_config__target_name_servers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forwarding_config__target_name_servers

[@@@deriving.end]

type forwarding_config = {
  target_name_servers : forwarding_config__target_name_servers list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forwarding_config) -> ()

let yojson_of_forwarding_config =
  (function
   | { target_name_servers = v_target_name_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_forwarding_config__target_name_servers
             v_target_name_servers
         in
         ("target_name_servers", arg) :: bnds
       in
       `Assoc bnds
    : forwarding_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forwarding_config

[@@@deriving.end]

type peering_config__target_network = { network_url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : peering_config__target_network) -> ()

let yojson_of_peering_config__target_network =
  (function
   | { network_url = v_network_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       `Assoc bnds
    : peering_config__target_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_peering_config__target_network

[@@@deriving.end]

type peering_config = {
  target_network : peering_config__target_network list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : peering_config) -> ()

let yojson_of_peering_config =
  (function
   | { target_network = v_target_network } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_peering_config__target_network
             v_target_network
         in
         ("target_network", arg) :: bnds
       in
       `Assoc bnds
    : peering_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_peering_config

[@@@deriving.end]

type private_visibility_config__gke_clusters = {
  gke_cluster_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_visibility_config__gke_clusters) -> ()

let yojson_of_private_visibility_config__gke_clusters =
  (function
   | { gke_cluster_name = v_gke_cluster_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gke_cluster_name
         in
         ("gke_cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : private_visibility_config__gke_clusters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_visibility_config__gke_clusters

[@@@deriving.end]

type private_visibility_config__networks = {
  network_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_visibility_config__networks) -> ()

let yojson_of_private_visibility_config__networks =
  (function
   | { network_url = v_network_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       `Assoc bnds
    : private_visibility_config__networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_visibility_config__networks

[@@@deriving.end]

type private_visibility_config = {
  gke_clusters : private_visibility_config__gke_clusters list;
  networks : private_visibility_config__networks list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_visibility_config) -> ()

let yojson_of_private_visibility_config =
  (function
   | { gke_clusters = v_gke_clusters; networks = v_networks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_private_visibility_config__networks v_networks
         in
         ("networks", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_private_visibility_config__gke_clusters
             v_gke_clusters
         in
         ("gke_clusters", arg) :: bnds
       in
       `Assoc bnds
    : private_visibility_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_visibility_config

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

type google_dns_managed_zone = {
  description : string prop option; [@option]
  dns_name : string prop;
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  visibility : string prop option; [@option]
  cloud_logging_config : cloud_logging_config list;
  dnssec_config : dnssec_config list;
  forwarding_config : forwarding_config list;
  peering_config : peering_config list;
  private_visibility_config : private_visibility_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_managed_zone) -> ()

let yojson_of_google_dns_managed_zone =
  (function
   | {
       description = v_description;
       dns_name = v_dns_name;
       force_destroy = v_force_destroy;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       visibility = v_visibility;
       cloud_logging_config = v_cloud_logging_config;
       dnssec_config = v_dnssec_config;
       forwarding_config = v_forwarding_config;
       peering_config = v_peering_config;
       private_visibility_config = v_private_visibility_config;
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
           yojson_of_list yojson_of_private_visibility_config
             v_private_visibility_config
         in
         ("private_visibility_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_peering_config v_peering_config
         in
         ("peering_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_forwarding_config
             v_forwarding_config
         in
         ("forwarding_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dnssec_config v_dnssec_config
         in
         ("dnssec_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cloud_logging_config
             v_cloud_logging_config
         in
         ("cloud_logging_config", arg) :: bnds
       in
       let bnds =
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visibility", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
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
    : google_dns_managed_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_managed_zone

[@@@deriving.end]

let cloud_logging_config ~enable_logging () : cloud_logging_config =
  { enable_logging }

let dnssec_config__default_key_specs ?algorithm ?key_length ?key_type
    ?kind () : dnssec_config__default_key_specs =
  { algorithm; key_length; key_type; kind }

let dnssec_config ?kind ?non_existence ?state ~default_key_specs () :
    dnssec_config =
  { kind; non_existence; state; default_key_specs }

let forwarding_config__target_name_servers ?forwarding_path
    ~ipv4_address () : forwarding_config__target_name_servers =
  { forwarding_path; ipv4_address }

let forwarding_config ~target_name_servers () : forwarding_config =
  { target_name_servers }

let peering_config__target_network ~network_url () :
    peering_config__target_network =
  { network_url }

let peering_config ~target_network () : peering_config =
  { target_network }

let private_visibility_config__gke_clusters ~gke_cluster_name () :
    private_visibility_config__gke_clusters =
  { gke_cluster_name }

let private_visibility_config__networks ~network_url () :
    private_visibility_config__networks =
  { network_url }

let private_visibility_config ~gke_clusters ~networks () :
    private_visibility_config =
  { gke_clusters; networks }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_managed_zone ?description ?force_destroy ?id ?labels
    ?project ?visibility ?timeouts ~dns_name ~name
    ~cloud_logging_config ~dnssec_config ~forwarding_config
    ~peering_config ~private_visibility_config () :
    google_dns_managed_zone =
  {
    description;
    dns_name;
    force_destroy;
    id;
    labels;
    name;
    project;
    visibility;
    cloud_logging_config;
    dnssec_config;
    forwarding_config;
    peering_config;
    private_visibility_config;
    timeouts;
  }

type t = {
  creation_time : string prop;
  description : string prop;
  dns_name : string prop;
  effective_labels : (string * string) list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string list prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  visibility : string prop;
}

let make ?description ?force_destroy ?id ?labels ?project ?visibility
    ?timeouts ~dns_name ~name ~cloud_logging_config ~dnssec_config
    ~forwarding_config ~peering_config ~private_visibility_config
    __id =
  let __type = "google_dns_managed_zone" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       description = Prop.computed __type __id "description";
       dns_name = Prop.computed __type __id "dns_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       managed_zone_id = Prop.computed __type __id "managed_zone_id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_managed_zone
        (google_dns_managed_zone ?description ?force_destroy ?id
           ?labels ?project ?visibility ?timeouts ~dns_name ~name
           ~cloud_logging_config ~dnssec_config ~forwarding_config
           ~peering_config ~private_visibility_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?labels
    ?project ?visibility ?timeouts ~dns_name ~name
    ~cloud_logging_config ~dnssec_config ~forwarding_config
    ~peering_config ~private_visibility_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?labels ?project ?visibility
      ?timeouts ~dns_name ~name ~cloud_logging_config ~dnssec_config
      ~forwarding_config ~peering_config ~private_visibility_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
