(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** three_tier_configuration__application_server_configuration__virtual_machine_configuration__image *)

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_private_key : string prop;  (** ssh_private_key *)
  ssh_public_key : string prop;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile *)

type three_tier_configuration__application_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  image :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__application_server_configuration__virtual_machine_configuration *)

type three_tier_configuration__application_server_configuration = {
  instance_count : float prop;  (** instance_count *)
  subnet_id : string prop;  (** subnet_id *)
  virtual_machine_configuration :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__application_server_configuration *)

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** three_tier_configuration__central_server_configuration__virtual_machine_configuration__image *)

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_private_key : string prop;  (** ssh_private_key *)
  ssh_public_key : string prop;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile *)

type three_tier_configuration__central_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  image :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__central_server_configuration__virtual_machine_configuration *)

type three_tier_configuration__central_server_configuration = {
  instance_count : float prop;  (** instance_count *)
  subnet_id : string prop;  (** subnet_id *)
  virtual_machine_configuration :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__central_server_configuration *)

type three_tier_configuration__database_server_configuration__disk_volume_configuration = {
  number_of_disks : float prop;  (** number_of_disks *)
  size_in_gb : float prop;  (** size_in_gb *)
  sku_name : string prop;  (** sku_name *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__database_server_configuration__disk_volume_configuration *)

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** three_tier_configuration__database_server_configuration__virtual_machine_configuration__image *)

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_private_key : string prop;  (** ssh_private_key *)
  ssh_public_key : string prop;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile *)

type three_tier_configuration__database_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  image :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__database_server_configuration__virtual_machine_configuration *)

type three_tier_configuration__database_server_configuration = {
  database_type : string prop option; [@option]  (** database_type *)
  instance_count : float prop;  (** instance_count *)
  subnet_id : string prop;  (** subnet_id *)
  disk_volume_configuration :
    three_tier_configuration__database_server_configuration__disk_volume_configuration
    list;
  virtual_machine_configuration :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__database_server_configuration *)

type three_tier_configuration__resource_names__application_server__virtual_machine__data_disk = {
  names : string prop list;  (** names *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__application_server__virtual_machine__data_disk *)

type three_tier_configuration__resource_names__application_server__virtual_machine = {
  host_name : string prop option; [@option]  (** host_name *)
  network_interface_names : string prop list option; [@option]
      (** network_interface_names *)
  os_disk_name : string prop option; [@option]  (** os_disk_name *)
  virtual_machine_name : string prop option; [@option]
      (** virtual_machine_name *)
  data_disk :
    three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__application_server__virtual_machine *)

type three_tier_configuration__resource_names__application_server = {
  availability_set_name : string prop option; [@option]
      (** availability_set_name *)
  virtual_machine :
    three_tier_configuration__resource_names__application_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__application_server *)

type three_tier_configuration__resource_names__central_server__load_balancer = {
  backend_pool_names : string prop list option; [@option]
      (** backend_pool_names *)
  frontend_ip_configuration_names : string prop list option;
      [@option]
      (** frontend_ip_configuration_names *)
  health_probe_names : string prop list option; [@option]
      (** health_probe_names *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__central_server__load_balancer *)

type three_tier_configuration__resource_names__central_server__virtual_machine__data_disk = {
  names : string prop list;  (** names *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__central_server__virtual_machine__data_disk *)

type three_tier_configuration__resource_names__central_server__virtual_machine = {
  host_name : string prop option; [@option]  (** host_name *)
  network_interface_names : string prop list option; [@option]
      (** network_interface_names *)
  os_disk_name : string prop option; [@option]  (** os_disk_name *)
  virtual_machine_name : string prop option; [@option]
      (** virtual_machine_name *)
  data_disk :
    three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__central_server__virtual_machine *)

type three_tier_configuration__resource_names__central_server = {
  availability_set_name : string prop option; [@option]
      (** availability_set_name *)
  load_balancer :
    three_tier_configuration__resource_names__central_server__load_balancer
    list;
  virtual_machine :
    three_tier_configuration__resource_names__central_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__central_server *)

type three_tier_configuration__resource_names__database_server__load_balancer = {
  backend_pool_names : string prop list option; [@option]
      (** backend_pool_names *)
  frontend_ip_configuration_names : string prop list option;
      [@option]
      (** frontend_ip_configuration_names *)
  health_probe_names : string prop list option; [@option]
      (** health_probe_names *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__database_server__load_balancer *)

type three_tier_configuration__resource_names__database_server__virtual_machine__data_disk = {
  names : string prop list;  (** names *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__database_server__virtual_machine__data_disk *)

type three_tier_configuration__resource_names__database_server__virtual_machine = {
  host_name : string prop option; [@option]  (** host_name *)
  network_interface_names : string prop list option; [@option]
      (** network_interface_names *)
  os_disk_name : string prop option; [@option]  (** os_disk_name *)
  virtual_machine_name : string prop option; [@option]
      (** virtual_machine_name *)
  data_disk :
    three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__database_server__virtual_machine *)

type three_tier_configuration__resource_names__database_server = {
  availability_set_name : string prop option; [@option]
      (** availability_set_name *)
  load_balancer :
    three_tier_configuration__resource_names__database_server__load_balancer
    list;
  virtual_machine :
    three_tier_configuration__resource_names__database_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__database_server *)

type three_tier_configuration__resource_names__shared_storage = {
  account_name : string prop option; [@option]  (** account_name *)
  private_endpoint_name : string prop option; [@option]
      (** private_endpoint_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names__shared_storage *)

type three_tier_configuration__resource_names = {
  application_server :
    three_tier_configuration__resource_names__application_server list;
  central_server :
    three_tier_configuration__resource_names__central_server list;
  database_server :
    three_tier_configuration__resource_names__database_server list;
  shared_storage :
    three_tier_configuration__resource_names__shared_storage list;
}
[@@deriving yojson_of]
(** three_tier_configuration__resource_names *)

type three_tier_configuration__transport_create_and_mount = {
  resource_group_id : string prop option; [@option]
      (** resource_group_id *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
}
[@@deriving yojson_of]
(** three_tier_configuration__transport_create_and_mount *)

type three_tier_configuration = {
  app_resource_group_name : string prop;
      (** app_resource_group_name *)
  high_availability_type : string prop option; [@option]
      (** high_availability_type *)
  secondary_ip_enabled : bool prop option; [@option]
      (** secondary_ip_enabled *)
  application_server_configuration :
    three_tier_configuration__application_server_configuration list;
  central_server_configuration :
    three_tier_configuration__central_server_configuration list;
  database_server_configuration :
    three_tier_configuration__database_server_configuration list;
  resource_names : three_tier_configuration__resource_names list;
  transport_create_and_mount :
    three_tier_configuration__transport_create_and_mount list;
}
[@@deriving yojson_of]
(** three_tier_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_workloads_sap_three_tier_virtual_instance = {
  app_location : string prop;  (** app_location *)
  environment : string prop;  (** environment *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sap_fqdn : string prop;  (** sap_fqdn *)
  sap_product : string prop;  (** sap_product *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  three_tier_configuration : three_tier_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance *)

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__application_server_configuration
    ~instance_count ~subnet_id ~virtual_machine_configuration () :
    three_tier_configuration__application_server_configuration =
  { instance_count; subnet_id; virtual_machine_configuration }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__central_server_configuration
    ~instance_count ~subnet_id ~virtual_machine_configuration () :
    three_tier_configuration__central_server_configuration =
  { instance_count; subnet_id; virtual_machine_configuration }

let three_tier_configuration__database_server_configuration__disk_volume_configuration
    ~number_of_disks ~size_in_gb ~sku_name ~volume_name () :
    three_tier_configuration__database_server_configuration__disk_volume_configuration
    =
  { number_of_disks; size_in_gb; sku_name; volume_name }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__database_server_configuration
    ?database_type ~instance_count ~subnet_id
    ~disk_volume_configuration ~virtual_machine_configuration () :
    three_tier_configuration__database_server_configuration =
  {
    database_type;
    instance_count;
    subnet_id;
    disk_volume_configuration;
    virtual_machine_configuration;
  }

let three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__application_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__application_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__application_server
    ?availability_set_name ~virtual_machine () :
    three_tier_configuration__resource_names__application_server =
  { availability_set_name; virtual_machine }

let three_tier_configuration__resource_names__central_server__load_balancer
    ?backend_pool_names ?frontend_ip_configuration_names
    ?health_probe_names ?name () :
    three_tier_configuration__resource_names__central_server__load_balancer
    =
  {
    backend_pool_names;
    frontend_ip_configuration_names;
    health_probe_names;
    name;
  }

let three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__central_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__central_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__central_server
    ?availability_set_name ~load_balancer ~virtual_machine () :
    three_tier_configuration__resource_names__central_server =
  { availability_set_name; load_balancer; virtual_machine }

let three_tier_configuration__resource_names__database_server__load_balancer
    ?backend_pool_names ?frontend_ip_configuration_names
    ?health_probe_names ?name () :
    three_tier_configuration__resource_names__database_server__load_balancer
    =
  {
    backend_pool_names;
    frontend_ip_configuration_names;
    health_probe_names;
    name;
  }

let three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__database_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__database_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__database_server
    ?availability_set_name ~load_balancer ~virtual_machine () :
    three_tier_configuration__resource_names__database_server =
  { availability_set_name; load_balancer; virtual_machine }

let three_tier_configuration__resource_names__shared_storage
    ?account_name ?private_endpoint_name () :
    three_tier_configuration__resource_names__shared_storage =
  { account_name; private_endpoint_name }

let three_tier_configuration__resource_names ~application_server
    ~central_server ~database_server ~shared_storage () :
    three_tier_configuration__resource_names =
  {
    application_server;
    central_server;
    database_server;
    shared_storage;
  }

let three_tier_configuration__transport_create_and_mount
    ?resource_group_id ?storage_account_name () :
    three_tier_configuration__transport_create_and_mount =
  { resource_group_id; storage_account_name }

let three_tier_configuration ?high_availability_type
    ?secondary_ip_enabled ~app_resource_group_name
    ~application_server_configuration ~central_server_configuration
    ~database_server_configuration ~resource_names
    ~transport_create_and_mount () : three_tier_configuration =
  {
    app_resource_group_name;
    high_availability_type;
    secondary_ip_enabled;
    application_server_configuration;
    central_server_configuration;
    database_server_configuration;
    resource_names;
    transport_create_and_mount;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_workloads_sap_three_tier_virtual_instance ?id
    ?managed_resource_group_name ?tags ?timeouts ~app_location
    ~environment ~location ~name ~resource_group_name ~sap_fqdn
    ~sap_product ~identity ~three_tier_configuration () :
    azurerm_workloads_sap_three_tier_virtual_instance =
  {
    app_location;
    environment;
    id;
    location;
    managed_resource_group_name;
    name;
    resource_group_name;
    sap_fqdn;
    sap_product;
    tags;
    identity;
    three_tier_configuration;
    timeouts;
  }

type t = {
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

let make ?id ?managed_resource_group_name ?tags ?timeouts
    ~app_location ~environment ~location ~name ~resource_group_name
    ~sap_fqdn ~sap_product ~identity ~three_tier_configuration __id =
  let __type = "azurerm_workloads_sap_three_tier_virtual_instance" in
  let __attrs =
    ({
       app_location = Prop.computed __type __id "app_location";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sap_fqdn = Prop.computed __type __id "sap_fqdn";
       sap_product = Prop.computed __type __id "sap_product";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_workloads_sap_three_tier_virtual_instance
        (azurerm_workloads_sap_three_tier_virtual_instance ?id
           ?managed_resource_group_name ?tags ?timeouts ~app_location
           ~environment ~location ~name ~resource_group_name
           ~sap_fqdn ~sap_product ~identity ~three_tier_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_resource_group_name ?tags
    ?timeouts ~app_location ~environment ~location ~name
    ~resource_group_name ~sap_fqdn ~sap_product ~identity
    ~three_tier_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_resource_group_name ?tags ?timeouts
      ~app_location ~environment ~location ~name ~resource_group_name
      ~sap_fqdn ~sap_product ~identity ~three_tier_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
