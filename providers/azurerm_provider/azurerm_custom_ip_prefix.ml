(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_custom_ip_prefix__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_custom_ip_prefix__timeouts *)

type azurerm_custom_ip_prefix = {
  cidr : string;  (** cidr *)
  commissioning_enabled : bool option; [@option]
      (** commissioning_enabled *)
  id : string option; [@option]  (** id *)
  internet_advertising_disabled : bool option; [@option]
      (** internet_advertising_disabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  parent_custom_ip_prefix_id : string option; [@option]
      (** parent_custom_ip_prefix_id *)
  resource_group_name : string;  (** resource_group_name *)
  roa_validity_end_date : string option; [@option]
      (** roa_validity_end_date *)
  tags : (string * string) list option; [@option]  (** tags *)
  wan_validation_signed_message : string option; [@option]
      (** wan_validation_signed_message *)
  zones : string list option; [@option]  (** zones *)
  timeouts : azurerm_custom_ip_prefix__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_custom_ip_prefix *)

let azurerm_custom_ip_prefix ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_custom_ip_prefix" in
  let __resource =
    {
      cidr;
      commissioning_enabled;
      id;
      internet_advertising_disabled;
      location;
      name;
      parent_custom_ip_prefix_id;
      resource_group_name;
      roa_validity_end_date;
      tags;
      wan_validation_signed_message;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_custom_ip_prefix __resource);
  ()
