(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers *)

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols = {
  port : float;  (** port *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols *)

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule = {
  description : string option; [@option]  (** description *)
  destination_addresses : string list option; [@option]
      (** destination_addresses *)
  destination_fqdn_tags : string list option; [@option]
      (** destination_fqdn_tags *)
  destination_fqdns : string list option; [@option]
      (** destination_fqdns *)
  destination_urls : string list option; [@option]
      (** destination_urls *)
  name : string;  (** name *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
  terminate_tls : bool option; [@option]  (** terminate_tls *)
  web_categories : string list option; [@option]
      (** web_categories *)
  http_headers :
    azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers
    list;
  protocols :
    azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule *)

type azurerm_firewall_policy_rule_collection_group__application_rule_collection = {
  action : string;  (** action *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule = {
  description : string option; [@option]  (** description *)
  destination_address : string option; [@option]
      (** destination_address *)
  destination_ports : string list option; [@option]
      (** destination_ports *)
  name : string;  (** name *)
  protocols : string list;  (** protocols *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
  translated_address : string option; [@option]
      (** translated_address *)
  translated_fqdn : string option; [@option]  (** translated_fqdn *)
  translated_port : float;  (** translated_port *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule *)

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection = {
  action : string;  (** action *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__nat_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule = {
  description : string option; [@option]  (** description *)
  destination_addresses : string list option; [@option]
      (** destination_addresses *)
  destination_fqdns : string list option; [@option]
      (** destination_fqdns *)
  destination_ip_groups : string list option; [@option]
      (** destination_ip_groups *)
  destination_ports : string list;  (** destination_ports *)
  name : string;  (** name *)
  protocols : string list;  (** protocols *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule *)

type azurerm_firewall_policy_rule_collection_group__network_rule_collection = {
  action : string;  (** action *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__network_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__timeouts *)

type azurerm_firewall_policy_rule_collection_group = {
  firewall_policy_id : string;  (** firewall_policy_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  application_rule_collection :
    azurerm_firewall_policy_rule_collection_group__application_rule_collection
    list;
  nat_rule_collection :
    azurerm_firewall_policy_rule_collection_group__nat_rule_collection
    list;
  network_rule_collection :
    azurerm_firewall_policy_rule_collection_group__network_rule_collection
    list;
  timeouts :
    azurerm_firewall_policy_rule_collection_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group *)

let azurerm_firewall_policy_rule_collection_group ?id ?timeouts
    ~firewall_policy_id ~name ~priority ~application_rule_collection
    ~nat_rule_collection ~network_rule_collection __resource_id =
  let __resource_type =
    "azurerm_firewall_policy_rule_collection_group"
  in
  let __resource =
    {
      firewall_policy_id;
      id;
      name;
      priority;
      application_rule_collection;
      nat_rule_collection;
      network_rule_collection;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_policy_rule_collection_group
       __resource);
  ()
