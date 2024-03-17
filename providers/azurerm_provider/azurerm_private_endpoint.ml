(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_private_endpoint__ip_configuration = {
  member_name : string option; [@option]  (** member_name *)
  name : string;  (** name *)
  private_ip_address : string;  (** private_ip_address *)
  subresource_name : string option; [@option]  (** subresource_name *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__ip_configuration *)

type azurerm_private_endpoint__private_dns_zone_group = {
  id : string;  (** id *)
  name : string;  (** name *)
  private_dns_zone_ids : string list;  (** private_dns_zone_ids *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__private_dns_zone_group *)

type azurerm_private_endpoint__private_service_connection = {
  is_manual_connection : bool;  (** is_manual_connection *)
  name : string;  (** name *)
  private_connection_resource_alias : string option; [@option]
      (** private_connection_resource_alias *)
  private_connection_resource_id : string option; [@option]
      (** private_connection_resource_id *)
  private_ip_address : string;  (** private_ip_address *)
  request_message : string option; [@option]  (** request_message *)
  subresource_names : string list option; [@option]
      (** subresource_names *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__private_service_connection *)

type azurerm_private_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint__timeouts *)

type azurerm_private_endpoint__custom_dns_configs = {
  fqdn : string;  (** fqdn *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__network_interface = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs__record_sets = {
  fqdn : string;  (** fqdn *)
  ip_addresses : string list;  (** ip_addresses *)
  name : string;  (** name *)
  ttl : float;  (** ttl *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint__private_dns_zone_configs = {
  id : string;  (** id *)
  name : string;  (** name *)
  private_dns_zone_id : string;  (** private_dns_zone_id *)
  record_sets :
    azurerm_private_endpoint__private_dns_zone_configs__record_sets
    list;
      (** record_sets *)
}
[@@deriving yojson_of]

type azurerm_private_endpoint = {
  custom_network_interface_name : string option; [@option]
      (** custom_network_interface_name *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  ip_configuration : azurerm_private_endpoint__ip_configuration list;
  private_dns_zone_group :
    azurerm_private_endpoint__private_dns_zone_group list;
  private_service_connection :
    azurerm_private_endpoint__private_service_connection list;
  timeouts : azurerm_private_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_endpoint *)

let azurerm_private_endpoint ?custom_network_interface_name ?tags
    ?timeouts ~location ~name ~resource_group_name ~subnet_id
    ~ip_configuration ~private_dns_zone_group
    ~private_service_connection __resource_id =
  let __resource_type = "azurerm_private_endpoint" in
  let __resource =
    {
      custom_network_interface_name;
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
