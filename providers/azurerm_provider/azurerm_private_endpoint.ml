(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_endpoint__ip_configuration = {
  member_name : string prop option; [@option]  (** member_name *)
  name : string prop;  (** name *)
  private_ip_address : string prop;  (** private_ip_address *)
  subresource_name : string prop option; [@option]
      (** subresource_name *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__ip_configuration *)

type azurerm_private_endpoint__private_dns_zone_group = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_ids : string prop list;
      (** private_dns_zone_ids *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__private_dns_zone_group *)

type azurerm_private_endpoint__private_service_connection = {
  is_manual_connection : bool prop;  (** is_manual_connection *)
  name : string prop;  (** name *)
  private_connection_resource_alias : string prop option; [@option]
      (** private_connection_resource_alias *)
  private_connection_resource_id : string prop option; [@option]
      (** private_connection_resource_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  request_message : string prop option; [@option]
      (** request_message *)
  subresource_names : string prop list option; [@option]
      (** subresource_names *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__private_service_connection *)

type azurerm_private_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__timeouts *)

type azurerm_private_endpoint__custom_dns_configs = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__network_interface = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs__record_sets = {
  fqdn : string prop;  (** fqdn *)
  ip_addresses : string prop list;  (** ip_addresses *)
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_id : string prop;  (** private_dns_zone_id *)
  record_sets :
    azurerm_private_endpoint__private_dns_zone_configs__record_sets
    list;
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
  ip_configuration : azurerm_private_endpoint__ip_configuration list;
  private_dns_zone_group :
    azurerm_private_endpoint__private_dns_zone_group list;
  private_service_connection :
    azurerm_private_endpoint__private_service_connection list;
  timeouts : azurerm_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_endpoint *)

let azurerm_private_endpoint ?custom_network_interface_name ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~subnet_id
    ~ip_configuration ~private_dns_zone_group
    ~private_service_connection __resource_id =
  let __resource_type = "azurerm_private_endpoint" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_endpoint __resource);
  ()
