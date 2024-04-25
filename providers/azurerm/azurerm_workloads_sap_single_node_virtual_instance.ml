(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type single_server_configuration__disk_volume_configuration = {
  number_of_disks : float prop;
  size_in_gb : float prop;
  sku_name : string prop;
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : single_server_configuration__disk_volume_configuration) ->
  ()

let yojson_of_single_server_configuration__disk_volume_configuration
    =
  (function
   | {
       number_of_disks = v_number_of_disks;
       size_in_gb = v_size_in_gb;
       sku_name = v_sku_name;
       volume_name = v_volume_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gb in
         ("size_in_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_disks
         in
         ("number_of_disks", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration__disk_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__disk_volume_configuration

[@@@deriving.end]

type single_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       single_server_configuration__virtual_machine_configuration__image) ->
  ()

let yojson_of_single_server_configuration__virtual_machine_configuration__image
    =
  (function
   | {
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
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
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration__virtual_machine_configuration__image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__virtual_machine_configuration__image

[@@@deriving.end]

type single_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;
  ssh_private_key : string prop;
  ssh_public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       single_server_configuration__virtual_machine_configuration__os_profile) ->
  ()

let yojson_of_single_server_configuration__virtual_machine_configuration__os_profile
    =
  (function
   | {
       admin_username = v_admin_username;
       ssh_private_key = v_ssh_private_key;
       ssh_public_key = v_ssh_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_public_key
         in
         ("ssh_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_private_key
         in
         ("ssh_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration__virtual_machine_configuration__os_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__virtual_machine_configuration__os_profile

[@@@deriving.end]

type single_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;
  image :
    single_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    single_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : single_server_configuration__virtual_machine_configuration) ->
  ()

let yojson_of_single_server_configuration__virtual_machine_configuration
    =
  (function
   | {
       virtual_machine_size = v_virtual_machine_size;
       image = v_image;
       os_profile = v_os_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__virtual_machine_configuration__os_profile
             v_os_profile
         in
         ("os_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__virtual_machine_configuration__image
             v_image
         in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_size
         in
         ("virtual_machine_size", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration__virtual_machine_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__virtual_machine_configuration

[@@@deriving.end]

type single_server_configuration__virtual_machine_resource_names__data_disk = {
  names : string prop list;
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       single_server_configuration__virtual_machine_resource_names__data_disk) ->
  ()

let yojson_of_single_server_configuration__virtual_machine_resource_names__data_disk
    =
  (function
   | { names = v_names; volume_name = v_volume_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_names
         in
         ("names", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration__virtual_machine_resource_names__data_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__virtual_machine_resource_names__data_disk

[@@@deriving.end]

type single_server_configuration__virtual_machine_resource_names = {
  host_name : string prop option; [@option]
  network_interface_names : string prop list option; [@option]
  os_disk_name : string prop option; [@option]
  virtual_machine_name : string prop option; [@option]
  data_disk :
    single_server_configuration__virtual_machine_resource_names__data_disk
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       single_server_configuration__virtual_machine_resource_names) ->
  ()

let yojson_of_single_server_configuration__virtual_machine_resource_names
    =
  (function
   | {
       host_name = v_host_name;
       network_interface_names = v_network_interface_names;
       os_disk_name = v_os_disk_name;
       virtual_machine_name = v_virtual_machine_name;
       data_disk = v_data_disk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__virtual_machine_resource_names__data_disk
             v_data_disk
         in
         ("data_disk", arg) :: bnds
       in
       let bnds =
         match v_virtual_machine_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_interface_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : single_server_configuration__virtual_machine_resource_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_server_configuration__virtual_machine_resource_names

[@@@deriving.end]

type single_server_configuration = {
  app_resource_group_name : string prop;
  database_type : string prop option; [@option]
  secondary_ip_enabled : bool prop option; [@option]
  subnet_id : string prop;
  disk_volume_configuration :
    single_server_configuration__disk_volume_configuration list;
  virtual_machine_configuration :
    single_server_configuration__virtual_machine_configuration list;
  virtual_machine_resource_names :
    single_server_configuration__virtual_machine_resource_names list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : single_server_configuration) -> ()

let yojson_of_single_server_configuration =
  (function
   | {
       app_resource_group_name = v_app_resource_group_name;
       database_type = v_database_type;
       secondary_ip_enabled = v_secondary_ip_enabled;
       subnet_id = v_subnet_id;
       disk_volume_configuration = v_disk_volume_configuration;
       virtual_machine_configuration =
         v_virtual_machine_configuration;
       virtual_machine_resource_names =
         v_virtual_machine_resource_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__virtual_machine_resource_names
             v_virtual_machine_resource_names
         in
         ("virtual_machine_resource_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__virtual_machine_configuration
             v_virtual_machine_configuration
         in
         ("virtual_machine_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_single_server_configuration__disk_volume_configuration
             v_disk_volume_configuration
         in
         ("disk_volume_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_secondary_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secondary_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_resource_group_name
         in
         ("app_resource_group_name", arg) :: bnds
       in
       `Assoc bnds
    : single_server_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_single_server_configuration

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

type azurerm_workloads_sap_single_node_virtual_instance = {
  app_location : string prop;
  environment : string prop;
  id : string prop option; [@option]
  location : string prop;
  managed_resource_group_name : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
  single_server_configuration : single_server_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_workloads_sap_single_node_virtual_instance) -> ()

let yojson_of_azurerm_workloads_sap_single_node_virtual_instance =
  (function
   | {
       app_location = v_app_location;
       environment = v_environment;
       id = v_id;
       location = v_location;
       managed_resource_group_name = v_managed_resource_group_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sap_fqdn = v_sap_fqdn;
       sap_product = v_sap_product;
       tags = v_tags;
       identity = v_identity;
       single_server_configuration = v_single_server_configuration;
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
           yojson_of_list yojson_of_single_server_configuration
             v_single_server_configuration
         in
         ("single_server_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_sap_product in
         ("sap_product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sap_fqdn in
         ("sap_fqdn", arg) :: bnds
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
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_location in
         ("app_location", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_workloads_sap_single_node_virtual_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_workloads_sap_single_node_virtual_instance

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let single_server_configuration__disk_volume_configuration
    ~number_of_disks ~size_in_gb ~sku_name ~volume_name () :
    single_server_configuration__disk_volume_configuration =
  { number_of_disks; size_in_gb; sku_name; volume_name }

let single_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    single_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let single_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    single_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let single_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    single_server_configuration__virtual_machine_configuration =
  { virtual_machine_size; image; os_profile }

let single_server_configuration__virtual_machine_resource_names__data_disk
    ~names ~volume_name () :
    single_server_configuration__virtual_machine_resource_names__data_disk
    =
  { names; volume_name }

let single_server_configuration__virtual_machine_resource_names
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    single_server_configuration__virtual_machine_resource_names =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let single_server_configuration ?database_type ?secondary_ip_enabled
    ?(virtual_machine_resource_names = []) ~app_resource_group_name
    ~subnet_id ~disk_volume_configuration
    ~virtual_machine_configuration () : single_server_configuration =
  {
    app_resource_group_name;
    database_type;
    secondary_ip_enabled;
    subnet_id;
    disk_volume_configuration;
    virtual_machine_configuration;
    virtual_machine_resource_names;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_workloads_sap_single_node_virtual_instance ?id
    ?managed_resource_group_name ?tags ?(identity = []) ?timeouts
    ~app_location ~environment ~location ~name ~resource_group_name
    ~sap_fqdn ~sap_product ~single_server_configuration () :
    azurerm_workloads_sap_single_node_virtual_instance =
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
    single_server_configuration;
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

let make ?id ?managed_resource_group_name ?tags ?(identity = [])
    ?timeouts ~app_location ~environment ~location ~name
    ~resource_group_name ~sap_fqdn ~sap_product
    ~single_server_configuration __id =
  let __type =
    "azurerm_workloads_sap_single_node_virtual_instance"
  in
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
      yojson_of_azurerm_workloads_sap_single_node_virtual_instance
        (azurerm_workloads_sap_single_node_virtual_instance ?id
           ?managed_resource_group_name ?tags ~identity ?timeouts
           ~app_location ~environment ~location ~name
           ~resource_group_name ~sap_fqdn ~sap_product
           ~single_server_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_resource_group_name ?tags
    ?(identity = []) ?timeouts ~app_location ~environment ~location
    ~name ~resource_group_name ~sap_fqdn ~sap_product
    ~single_server_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_resource_group_name ?tags ~identity ?timeouts
      ~app_location ~environment ~location ~name ~resource_group_name
      ~sap_fqdn ~sap_product ~single_server_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
