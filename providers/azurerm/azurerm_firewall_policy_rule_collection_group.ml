(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__http_headers *)

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols = {
  port : float prop;  (** port *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule__protocols *)

type azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_fqdn_tags : string prop list option; [@option]
      (** destination_fqdn_tags *)
  destination_fqdns : string prop list option; [@option]
      (** destination_fqdns *)
  destination_urls : string prop list option; [@option]
      (** destination_urls *)
  name : string prop;  (** name *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
  terminate_tls : bool prop option; [@option]  (** terminate_tls *)
  web_categories : string prop list option; [@option]
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
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__application_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__application_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_address : string prop option; [@option]
      (** destination_address *)
  destination_ports : string prop list option; [@option]
      (** destination_ports *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
  translated_address : string prop option; [@option]
      (** translated_address *)
  translated_fqdn : string prop option; [@option]
      (** translated_fqdn *)
  translated_port : float prop;  (** translated_port *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule *)

type azurerm_firewall_policy_rule_collection_group__nat_rule_collection = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__nat_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__nat_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_fqdns : string prop list option; [@option]
      (** destination_fqdns *)
  destination_ip_groups : string prop list option; [@option]
      (** destination_ip_groups *)
  destination_ports : string prop list;  (** destination_ports *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule *)

type azurerm_firewall_policy_rule_collection_group__network_rule_collection = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  rule :
    azurerm_firewall_policy_rule_collection_group__network_rule_collection__rule
    list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__network_rule_collection *)

type azurerm_firewall_policy_rule_collection_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy_rule_collection_group__timeouts *)

type azurerm_firewall_policy_rule_collection_group = {
  firewall_policy_id : string prop;  (** firewall_policy_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
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

type t = {
  firewall_policy_id : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

let azurerm_firewall_policy_rule_collection_group ?id ?timeouts
    ~firewall_policy_id ~name ~priority ~application_rule_collection
    ~nat_rule_collection ~network_rule_collection __resource_id =
  let __resource_type =
    "azurerm_firewall_policy_rule_collection_group"
  in
  let __resource =
    ({
       firewall_policy_id;
       id;
       name;
       priority;
       application_rule_collection;
       nat_rule_collection;
       network_rule_collection;
       timeouts;
     }
      : azurerm_firewall_policy_rule_collection_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_policy_rule_collection_group
       __resource);
  let __resource_attributes =
    ({
       firewall_policy_id =
         Prop.computed __resource_type __resource_id
           "firewall_policy_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
     }
      : t)
  in
  __resource_attributes
