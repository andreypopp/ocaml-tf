(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  member_name : string prop option; [@option]  (** member_name *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  subresource_name : string prop option; [@option]
      (** subresource_name *)
}
[@@deriving yojson_of]
(** ip_configuration *)

type private_dns_zone_group = {
  name : string prop;  (** name *)
  private_dns_zone_ids : string prop list;
      (** private_dns_zone_ids *)
}
[@@deriving yojson_of]
(** private_dns_zone_group *)

type private_service_connection = {
  is_manual_connection : bool prop;  (** is_manual_connection *)
  name : string prop;  (** name *)
  private_connection_resource_alias : string prop option; [@option]
      (** private_connection_resource_alias *)
  private_connection_resource_id : string prop option; [@option]
      (** private_connection_resource_id *)
  request_message : string prop option; [@option]
      (** request_message *)
  subresource_names : string prop list option; [@option]
      (** subresource_names *)
}
[@@deriving yojson_of]
(** private_service_connection *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type custom_dns_configs = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type network_interface = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type private_dns_zone_configs__record_sets = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type private_dns_zone_configs = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_id : string prop;  (** private_dns_zone_id *)
  record_sets : private_dns_zone_configs__record_sets list;
      (** record_sets *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint = {
  custom_network_interface_name : string prop option; [@option]
      (** custom_network_interface_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ip_configuration : ip_configuration list;
  private_dns_zone_group : private_dns_zone_group list;
  private_service_connection : private_service_connection list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_endpoint *)

let ip_configuration ?member_name ?subresource_name ~name
    ~private_ip_address () : ip_configuration =
  { member_name; name; private_ip_address; subresource_name }

let private_dns_zone_group ~name ~private_dns_zone_ids () :
    private_dns_zone_group =
  { name; private_dns_zone_ids }

let private_service_connection ?private_connection_resource_alias
    ?private_connection_resource_id ?request_message
    ?subresource_names ~is_manual_connection ~name () :
    private_service_connection =
  {
    is_manual_connection;
    name;
    private_connection_resource_alias;
    private_connection_resource_id;
    request_message;
    subresource_names;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_endpoint ?custom_network_interface_name ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~subnet_id
    ~ip_configuration ~private_dns_zone_group
    ~private_service_connection () : azurerm_private_endpoint =
  {
    custom_network_interface_name;
    id;
    location;
    name;
    resource_group_name;
    subnet_id;
    tags;
    ip_configuration;
    private_dns_zone_group;
    private_service_connection;
    timeouts;
  }

type t = {
  custom_dns_configs : custom_dns_configs list prop;
  custom_network_interface_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  private_dns_zone_configs : private_dns_zone_configs list prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let make ?custom_network_interface_name ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~subnet_id ~ip_configuration
    ~private_dns_zone_group ~private_service_connection __id =
  let __type = "azurerm_private_endpoint" in
  let __attrs =
    ({
       custom_dns_configs =
         Prop.computed __type __id "custom_dns_configs";
       custom_network_interface_name =
         Prop.computed __type __id "custom_network_interface_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_interface =
         Prop.computed __type __id "network_interface";
       private_dns_zone_configs =
         Prop.computed __type __id "private_dns_zone_configs";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_endpoint
        (azurerm_private_endpoint ?custom_network_interface_name ?id
           ?tags ?timeouts ~location ~name ~resource_group_name
           ~subnet_id ~ip_configuration ~private_dns_zone_group
           ~private_service_connection ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_network_interface_name ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~subnet_id
    ~ip_configuration ~private_dns_zone_group
    ~private_service_connection __id =
  let (r : _ Tf_core.resource) =
    make ?custom_network_interface_name ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~subnet_id ~ip_configuration
      ~private_dns_zone_group ~private_service_connection __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
