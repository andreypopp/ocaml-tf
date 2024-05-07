(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization__admin_groups = { group : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_groups) -> ()

let yojson_of_authorization__admin_groups =
  (function
   | { group = v_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : authorization__admin_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_groups

[@@@deriving.end]

type authorization__admin_users = { username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_users) -> ()

let yojson_of_authorization__admin_users =
  (function
   | { username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       `Assoc bnds
    : authorization__admin_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_users

[@@@deriving.end]

type authorization = {
  admin_groups : authorization__admin_groups list;
  admin_users : authorization__admin_users list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | { admin_groups = v_admin_groups; admin_users = v_admin_users }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authorization__admin_users
             v_admin_users
         in
         ("admin_users", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authorization__admin_groups
             v_admin_groups
         in
         ("admin_groups", arg) :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type azure_services_authentication = {
  application_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_services_authentication) -> ()

let yojson_of_azure_services_authentication =
  (function
   | { application_id = v_application_id; tenant_id = v_tenant_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_services_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_services_authentication

[@@@deriving.end]

type control_plane__database_encryption = { key_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__database_encryption) -> ()

let yojson_of_control_plane__database_encryption =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__database_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__database_encryption

[@@@deriving.end]

type control_plane__main_volume = {
  size_gib : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__main_volume) -> ()

let yojson_of_control_plane__main_volume =
  (function
   | { size_gib = v_size_gib } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gib", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane__main_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__main_volume

[@@@deriving.end]

type control_plane__proxy_config = {
  resource_group_id : string prop;
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__proxy_config) -> ()

let yojson_of_control_plane__proxy_config =
  (function
   | {
       resource_group_id = v_resource_group_id;
       secret_id = v_secret_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_id
         in
         ("resource_group_id", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__proxy_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__proxy_config

[@@@deriving.end]

type control_plane__replica_placements = {
  azure_availability_zone : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__replica_placements) -> ()

let yojson_of_control_plane__replica_placements =
  (function
   | {
       azure_availability_zone = v_azure_availability_zone;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_azure_availability_zone
         in
         ("azure_availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__replica_placements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__replica_placements

[@@@deriving.end]

type control_plane__root_volume = {
  size_gib : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__root_volume) -> ()

let yojson_of_control_plane__root_volume =
  (function
   | { size_gib = v_size_gib } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gib", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane__root_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__root_volume

[@@@deriving.end]

type control_plane__ssh_config = { authorized_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__ssh_config) -> ()

let yojson_of_control_plane__ssh_config =
  (function
   | { authorized_key = v_authorized_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorized_key
         in
         ("authorized_key", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__ssh_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__ssh_config

[@@@deriving.end]

type control_plane = {
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  version : string prop;
  vm_size : string prop option; [@option]
  database_encryption : control_plane__database_encryption list;
  main_volume : control_plane__main_volume list;
  proxy_config : control_plane__proxy_config list;
  replica_placements : control_plane__replica_placements list;
  root_volume : control_plane__root_volume list;
  ssh_config : control_plane__ssh_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane) -> ()

let yojson_of_control_plane =
  (function
   | {
       subnet_id = v_subnet_id;
       tags = v_tags;
       version = v_version;
       vm_size = v_vm_size;
       database_encryption = v_database_encryption;
       main_volume = v_main_volume;
       proxy_config = v_proxy_config;
       replica_placements = v_replica_placements;
       root_volume = v_root_volume;
       ssh_config = v_ssh_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane__ssh_config
             v_ssh_config
         in
         ("ssh_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane__root_volume
             v_root_volume
         in
         ("root_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane__replica_placements
             v_replica_placements
         in
         ("replica_placements", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane__proxy_config
             v_proxy_config
         in
         ("proxy_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane__main_volume
             v_main_volume
         in
         ("main_volume", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_control_plane__database_encryption
             v_database_encryption
         in
         ("database_encryption", arg) :: bnds
       in
       let bnds =
         match v_vm_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vm_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : control_plane -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane

[@@@deriving.end]

type fleet = { project : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { project = v_project } ->
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
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type networking = {
  pod_address_cidr_blocks : string prop list;
  service_address_cidr_blocks : string prop list;
  virtual_network_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networking) -> ()

let yojson_of_networking =
  (function
   | {
       pod_address_cidr_blocks = v_pod_address_cidr_blocks;
       service_address_cidr_blocks = v_service_address_cidr_blocks;
       virtual_network_id = v_virtual_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_network_id
         in
         ("virtual_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_service_address_cidr_blocks
         in
         ("service_address_cidr_blocks", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pod_address_cidr_blocks
         in
         ("pod_address_cidr_blocks", arg) :: bnds
       in
       `Assoc bnds
    : networking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networking

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

type workload_identity_config = {
  identity_provider : string prop;
  issuer_uri : string prop;
  workload_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_identity_config) -> ()

let yojson_of_workload_identity_config =
  (function
   | {
       identity_provider = v_identity_provider;
       issuer_uri = v_issuer_uri;
       workload_pool = v_workload_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_pool in
         ("workload_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_uri in
         ("issuer_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider
         in
         ("identity_provider", arg) :: bnds
       in
       `Assoc bnds
    : workload_identity_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_identity_config

[@@@deriving.end]

type google_container_azure_cluster = {
  annotations : (string * string prop) list option; [@option]
  azure_region : string prop;
  client : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  resource_group_id : string prop;
  authorization : authorization list;
  azure_services_authentication : azure_services_authentication list;
  control_plane : control_plane list;
  fleet : fleet list;
  networking : networking list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_azure_cluster) -> ()

let yojson_of_google_container_azure_cluster =
  (function
   | {
       annotations = v_annotations;
       azure_region = v_azure_region;
       client = v_client;
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       resource_group_id = v_resource_group_id;
       authorization = v_authorization;
       azure_services_authentication =
         v_azure_services_authentication;
       control_plane = v_control_plane;
       fleet = v_fleet;
       networking = v_networking;
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
           yojson_of_list yojson_of_networking v_networking
         in
         ("networking", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_fleet v_fleet in
         ("fleet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_control_plane v_control_plane
         in
         ("control_plane", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_azure_services_authentication
             v_azure_services_authentication
         in
         ("azure_services_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authorization v_authorization
         in
         ("authorization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_id
         in
         ("resource_group_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
       let bnds =
         match v_client with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_azure_region in
         ("azure_region", arg) :: bnds
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
    : google_container_azure_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_azure_cluster

[@@@deriving.end]

let authorization__admin_groups ~group () :
    authorization__admin_groups =
  { group }

let authorization__admin_users ~username () :
    authorization__admin_users =
  { username }

let authorization ?(admin_groups = []) ~admin_users () :
    authorization =
  { admin_groups; admin_users }

let azure_services_authentication ~application_id ~tenant_id () :
    azure_services_authentication =
  { application_id; tenant_id }

let control_plane__database_encryption ~key_id () :
    control_plane__database_encryption =
  { key_id }

let control_plane__main_volume ?size_gib () :
    control_plane__main_volume =
  { size_gib }

let control_plane__proxy_config ~resource_group_id ~secret_id () :
    control_plane__proxy_config =
  { resource_group_id; secret_id }

let control_plane__replica_placements ~azure_availability_zone
    ~subnet_id () : control_plane__replica_placements =
  { azure_availability_zone; subnet_id }

let control_plane__root_volume ?size_gib () :
    control_plane__root_volume =
  { size_gib }

let control_plane__ssh_config ~authorized_key () :
    control_plane__ssh_config =
  { authorized_key }

let control_plane ?tags ?vm_size ?(database_encryption = [])
    ?(main_volume = []) ?(proxy_config = [])
    ?(replica_placements = []) ?(root_volume = []) ~subnet_id
    ~version ~ssh_config () : control_plane =
  {
    subnet_id;
    tags;
    version;
    vm_size;
    database_encryption;
    main_volume;
    proxy_config;
    replica_placements;
    root_volume;
    ssh_config;
  }

let fleet ?project () : fleet = { project }

let networking ~pod_address_cidr_blocks ~service_address_cidr_blocks
    ~virtual_network_id () : networking =
  {
    pod_address_cidr_blocks;
    service_address_cidr_blocks;
    virtual_network_id;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_azure_cluster ?annotations ?client ?description
    ?id ?project ?(azure_services_authentication = []) ?timeouts
    ~azure_region ~location ~name ~resource_group_id ~authorization
    ~control_plane ~fleet ~networking () :
    google_container_azure_cluster =
  {
    annotations;
    azure_region;
    client;
    description;
    id;
    location;
    name;
    project;
    resource_group_id;
    authorization;
    azure_services_authentication;
    control_plane;
    fleet;
    networking;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  azure_region : string prop;
  client : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  resource_group_id : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

let make ?annotations ?client ?description ?id ?project
    ?(azure_services_authentication = []) ?timeouts ~azure_region
    ~location ~name ~resource_group_id ~authorization ~control_plane
    ~fleet ~networking __id =
  let __type = "google_container_azure_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       azure_region = Prop.computed __type __id "azure_region";
       client = Prop.computed __type __id "client";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       endpoint = Prop.computed __type __id "endpoint";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       resource_group_id =
         Prop.computed __type __id "resource_group_id";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       workload_identity_config =
         Prop.computed __type __id "workload_identity_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_azure_cluster
        (google_container_azure_cluster ?annotations ?client
           ?description ?id ?project ~azure_services_authentication
           ?timeouts ~azure_region ~location ~name ~resource_group_id
           ~authorization ~control_plane ~fleet ~networking ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?client ?description ?id
    ?project ?(azure_services_authentication = []) ?timeouts
    ~azure_region ~location ~name ~resource_group_id ~authorization
    ~control_plane ~fleet ~networking __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?client ?description ?id ?project
      ~azure_services_authentication ?timeouts ~azure_region
      ~location ~name ~resource_group_id ~authorization
      ~control_plane ~fleet ~networking __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
