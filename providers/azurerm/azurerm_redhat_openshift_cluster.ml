(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type api_server_profile = { visibility : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : api_server_profile) -> ()

let yojson_of_api_server_profile =
  (function
   | { visibility = v_visibility } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       `Assoc bnds
    : api_server_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_server_profile

[@@@deriving.end]

type cluster_profile = {
  domain : string prop;
  fips_enabled : bool prop option; [@option]
  managed_resource_group_name : string prop option; [@option]
  pull_secret : string prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster_profile) -> ()

let yojson_of_cluster_profile =
  (function
   | {
       domain = v_domain;
       fips_enabled = v_fips_enabled;
       managed_resource_group_name = v_managed_resource_group_name;
       pull_secret = v_pull_secret;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_pull_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pull_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : cluster_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster_profile

[@@@deriving.end]

type ingress_profile = { visibility : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_profile) -> ()

let yojson_of_ingress_profile =
  (function
   | { visibility = v_visibility } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       `Assoc bnds
    : ingress_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_profile

[@@@deriving.end]

type main_profile = {
  disk_encryption_set_id : string prop option; [@option]
  encryption_at_host_enabled : bool prop option; [@option]
  subnet_id : string prop;
  vm_size : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : main_profile) -> ()

let yojson_of_main_profile =
  (function
   | {
       disk_encryption_set_id = v_disk_encryption_set_id;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       subnet_id = v_subnet_id;
       vm_size = v_vm_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_encryption_at_host_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_at_host_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : main_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_main_profile

[@@@deriving.end]

type network_profile = {
  outbound_type : string prop option; [@option]
  pod_cidr : string prop;
  preconfigured_network_security_group_enabled : bool prop option;
      [@option]
  service_cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       outbound_type = v_outbound_type;
       pod_cidr = v_pod_cidr;
       preconfigured_network_security_group_enabled =
         v_preconfigured_network_security_group_enabled;
       service_cidr = v_service_cidr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_cidr in
         ("service_cidr", arg) :: bnds
       in
       let bnds =
         match v_preconfigured_network_security_group_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "preconfigured_network_security_group_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pod_cidr in
         ("pod_cidr", arg) :: bnds
       in
       let bnds =
         match v_outbound_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

[@@@deriving.end]

type service_principal = {
  client_id : string prop;
  client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_principal) -> ()

let yojson_of_service_principal =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : service_principal -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_principal

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type worker_profile = {
  disk_encryption_set_id : string prop option; [@option]
  disk_size_gb : float prop;
  encryption_at_host_enabled : bool prop option; [@option]
  node_count : float prop;
  subnet_id : string prop;
  vm_size : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : worker_profile) -> ()

let yojson_of_worker_profile =
  (function
   | {
       disk_encryption_set_id = v_disk_encryption_set_id;
       disk_size_gb = v_disk_size_gb;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       node_count = v_node_count;
       subnet_id = v_subnet_id;
       vm_size = v_vm_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         match v_encryption_at_host_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_at_host_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : worker_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_worker_profile

[@@@deriving.end]

type azurerm_redhat_openshift_cluster = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  api_server_profile : api_server_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cluster_profile : cluster_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ingress_profile : ingress_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  main_profile : main_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_profile : network_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_principal : service_principal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  worker_profile : worker_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redhat_openshift_cluster) -> ()

let yojson_of_azurerm_redhat_openshift_cluster =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       api_server_profile = v_api_server_profile;
       cluster_profile = v_cluster_profile;
       ingress_profile = v_ingress_profile;
       main_profile = v_main_profile;
       network_profile = v_network_profile;
       service_principal = v_service_principal;
       timeouts = v_timeouts;
       worker_profile = v_worker_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_worker_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_worker_profile)
               v_worker_profile
           in
           let bnd = "worker_profile", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_service_principal then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_principal)
               v_service_principal
           in
           let bnd = "service_principal", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_profile)
               v_network_profile
           in
           let bnd = "network_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_main_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_main_profile) v_main_profile
           in
           let bnd = "main_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ingress_profile)
               v_ingress_profile
           in
           let bnd = "ingress_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster_profile)
               v_cluster_profile
           in
           let bnd = "cluster_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_server_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_api_server_profile)
               v_api_server_profile
           in
           let bnd = "api_server_profile", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_redhat_openshift_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redhat_openshift_cluster

[@@@deriving.end]

let api_server_profile ~visibility () : api_server_profile =
  { visibility }

let cluster_profile ?fips_enabled ?managed_resource_group_name
    ?pull_secret ~domain ~version () : cluster_profile =
  {
    domain;
    fips_enabled;
    managed_resource_group_name;
    pull_secret;
    version;
  }

let ingress_profile ~visibility () : ingress_profile = { visibility }

let main_profile ?disk_encryption_set_id ?encryption_at_host_enabled
    ~subnet_id ~vm_size () : main_profile =
  {
    disk_encryption_set_id;
    encryption_at_host_enabled;
    subnet_id;
    vm_size;
  }

let network_profile ?outbound_type
    ?preconfigured_network_security_group_enabled ~pod_cidr
    ~service_cidr () : network_profile =
  {
    outbound_type;
    pod_cidr;
    preconfigured_network_security_group_enabled;
    service_cidr;
  }

let service_principal ~client_id ~client_secret () :
    service_principal =
  { client_id; client_secret }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let worker_profile ?disk_encryption_set_id
    ?encryption_at_host_enabled ~disk_size_gb ~node_count ~subnet_id
    ~vm_size () : worker_profile =
  {
    disk_encryption_set_id;
    disk_size_gb;
    encryption_at_host_enabled;
    node_count;
    subnet_id;
    vm_size;
  }

let azurerm_redhat_openshift_cluster ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~api_server_profile ~cluster_profile
    ~ingress_profile ~main_profile ~network_profile
    ~service_principal ~worker_profile () :
    azurerm_redhat_openshift_cluster =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    api_server_profile;
    cluster_profile;
    ingress_profile;
    main_profile;
    network_profile;
    service_principal;
    timeouts;
    worker_profile;
  }

type t = {
  tf_name : string;
  console_url : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~api_server_profile ~cluster_profile ~ingress_profile
    ~main_profile ~network_profile ~service_principal ~worker_profile
    __id =
  let __type = "azurerm_redhat_openshift_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       console_url = Prop.computed __type __id "console_url";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redhat_openshift_cluster
        (azurerm_redhat_openshift_cluster ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~api_server_profile
           ~cluster_profile ~ingress_profile ~main_profile
           ~network_profile ~service_principal ~worker_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~api_server_profile ~cluster_profile
    ~ingress_profile ~main_profile ~network_profile
    ~service_principal ~worker_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~api_server_profile ~cluster_profile ~ingress_profile
      ~main_profile ~network_profile ~service_principal
      ~worker_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
