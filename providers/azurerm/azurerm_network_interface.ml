(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  name : string prop;  (** name *)
  primary : bool prop option; [@option]  (** primary *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop;
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_interface = {
  auxiliary_mode : string prop option; [@option]
      (** auxiliary_mode *)
  auxiliary_sku : string prop option; [@option]  (** auxiliary_sku *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_accelerated_networking : bool prop option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool prop option; [@option]
      (** enable_ip_forwarding *)
  id : string prop option; [@option]  (** id *)
  internal_dns_name_label : string prop option; [@option]
      (** internal_dns_name_label *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ip_configuration : ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface *)

let ip_configuration
    ?gateway_load_balancer_frontend_ip_configuration_id ?primary
    ?private_ip_address ?private_ip_address_version
    ?public_ip_address_id ?subnet_id ~name
    ~private_ip_address_allocation () : ip_configuration =
  {
    gateway_load_balancer_frontend_ip_configuration_id;
    name;
    primary;
    private_ip_address;
    private_ip_address_allocation;
    private_ip_address_version;
    public_ip_address_id;
    subnet_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_interface ?auxiliary_mode ?auxiliary_sku
    ?dns_servers ?edge_zone ?enable_accelerated_networking
    ?enable_ip_forwarding ?id ?internal_dns_name_label ?tags
    ?timeouts ~location ~name ~resource_group_name ~ip_configuration
    () : azurerm_network_interface =
  {
    auxiliary_mode;
    auxiliary_sku;
    dns_servers;
    edge_zone;
    enable_accelerated_networking;
    enable_ip_forwarding;
    id;
    internal_dns_name_label;
    location;
    name;
    resource_group_name;
    tags;
    ip_configuration;
    timeouts;
  }

type t = {
  applied_dns_servers : string list prop;
  auxiliary_mode : string prop;
  auxiliary_sku : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  id : string prop;
  internal_dns_name_label : string prop;
  internal_domain_name_suffix : string prop;
  location : string prop;
  mac_address : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

let make ?auxiliary_mode ?auxiliary_sku ?dns_servers ?edge_zone
    ?enable_accelerated_networking ?enable_ip_forwarding ?id
    ?internal_dns_name_label ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __id =
  let __type = "azurerm_network_interface" in
  let __attrs =
    ({
       applied_dns_servers =
         Prop.computed __type __id "applied_dns_servers";
       auxiliary_mode = Prop.computed __type __id "auxiliary_mode";
       auxiliary_sku = Prop.computed __type __id "auxiliary_sku";
       dns_servers = Prop.computed __type __id "dns_servers";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_accelerated_networking =
         Prop.computed __type __id "enable_accelerated_networking";
       enable_ip_forwarding =
         Prop.computed __type __id "enable_ip_forwarding";
       id = Prop.computed __type __id "id";
       internal_dns_name_label =
         Prop.computed __type __id "internal_dns_name_label";
       internal_domain_name_suffix =
         Prop.computed __type __id "internal_domain_name_suffix";
       location = Prop.computed __type __id "location";
       mac_address = Prop.computed __type __id "mac_address";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface
        (azurerm_network_interface ?auxiliary_mode ?auxiliary_sku
           ?dns_servers ?edge_zone ?enable_accelerated_networking
           ?enable_ip_forwarding ?id ?internal_dns_name_label ?tags
           ?timeouts ~location ~name ~resource_group_name
           ~ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auxiliary_mode ?auxiliary_sku ?dns_servers
    ?edge_zone ?enable_accelerated_networking ?enable_ip_forwarding
    ?id ?internal_dns_name_label ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auxiliary_mode ?auxiliary_sku ?dns_servers ?edge_zone
      ?enable_accelerated_networking ?enable_ip_forwarding ?id
      ?internal_dns_name_label ?tags ?timeouts ~location ~name
      ~resource_group_name ~ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
