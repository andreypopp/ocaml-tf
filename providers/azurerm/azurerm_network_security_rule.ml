(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_security_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_security_rule__timeouts *)

type azurerm_network_security_rule = {
  access : string prop;  (** access *)
  description : string prop option; [@option]  (** description *)
  destination_address_prefix : string prop option; [@option]
      (** destination_address_prefix *)
  destination_address_prefixes : string prop list option; [@option]
      (** destination_address_prefixes *)
  destination_application_security_group_ids :
    string prop list option;
      [@option]
      (** destination_application_security_group_ids *)
  destination_port_range : string prop option; [@option]
      (** destination_port_range *)
  destination_port_ranges : string prop list option; [@option]
      (** destination_port_ranges *)
  direction : string prop;  (** direction *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  network_security_group_name : string prop;
      (** network_security_group_name *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_address_prefix : string prop option; [@option]
      (** source_address_prefix *)
  source_address_prefixes : string prop list option; [@option]
      (** source_address_prefixes *)
  source_application_security_group_ids : string prop list option;
      [@option]
      (** source_application_security_group_ids *)
  source_port_range : string prop option; [@option]
      (** source_port_range *)
  source_port_ranges : string prop list option; [@option]
      (** source_port_ranges *)
  timeouts : azurerm_network_security_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_security_rule *)

type t = {
  access : string prop;
  description : string prop;
  destination_address_prefix : string prop;
  destination_address_prefixes : string list prop;
  destination_application_security_group_ids : string list prop;
  destination_port_range : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  network_security_group_name : string prop;
  priority : float prop;
  protocol : string prop;
  resource_group_name : string prop;
  source_address_prefix : string prop;
  source_address_prefixes : string list prop;
  source_application_security_group_ids : string list prop;
  source_port_range : string prop;
  source_port_ranges : string list prop;
}

let azurerm_network_security_rule ?description
    ?destination_address_prefix ?destination_address_prefixes
    ?destination_application_security_group_ids
    ?destination_port_range ?destination_port_ranges ?id
    ?source_address_prefix ?source_address_prefixes
    ?source_application_security_group_ids ?source_port_range
    ?source_port_ranges ?timeouts ~access ~direction ~name
    ~network_security_group_name ~priority ~protocol
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_network_security_rule" in
  let __resource =
    ({
       access;
       description;
       destination_address_prefix;
       destination_address_prefixes;
       destination_application_security_group_ids;
       destination_port_range;
       destination_port_ranges;
       direction;
       id;
       name;
       network_security_group_name;
       priority;
       protocol;
       resource_group_name;
       source_address_prefix;
       source_address_prefixes;
       source_application_security_group_ids;
       source_port_range;
       source_port_ranges;
       timeouts;
     }
      : azurerm_network_security_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_security_rule __resource);
  let __resource_attributes =
    ({
       access = Prop.computed __resource_type __resource_id "access";
       description =
         Prop.computed __resource_type __resource_id "description";
       destination_address_prefix =
         Prop.computed __resource_type __resource_id
           "destination_address_prefix";
       destination_address_prefixes =
         Prop.computed __resource_type __resource_id
           "destination_address_prefixes";
       destination_application_security_group_ids =
         Prop.computed __resource_type __resource_id
           "destination_application_security_group_ids";
       destination_port_range =
         Prop.computed __resource_type __resource_id
           "destination_port_range";
       destination_port_ranges =
         Prop.computed __resource_type __resource_id
           "destination_port_ranges";
       direction =
         Prop.computed __resource_type __resource_id "direction";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network_security_group_name =
         Prop.computed __resource_type __resource_id
           "network_security_group_name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_address_prefix =
         Prop.computed __resource_type __resource_id
           "source_address_prefix";
       source_address_prefixes =
         Prop.computed __resource_type __resource_id
           "source_address_prefixes";
       source_application_security_group_ids =
         Prop.computed __resource_type __resource_id
           "source_application_security_group_ids";
       source_port_range =
         Prop.computed __resource_type __resource_id
           "source_port_range";
       source_port_ranges =
         Prop.computed __resource_type __resource_id
           "source_port_ranges";
     }
      : t)
  in
  __resource_attributes
