(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_custom_ip_prefix__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_custom_ip_prefix__timeouts *)

type azurerm_custom_ip_prefix = {
  cidr : string prop;  (** cidr *)
  commissioning_enabled : bool prop option; [@option]
      (** commissioning_enabled *)
  id : string prop option; [@option]  (** id *)
  internet_advertising_disabled : bool prop option; [@option]
      (** internet_advertising_disabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  parent_custom_ip_prefix_id : string prop option; [@option]
      (** parent_custom_ip_prefix_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  roa_validity_end_date : string prop option; [@option]
      (** roa_validity_end_date *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  wan_validation_signed_message : string prop option; [@option]
      (** wan_validation_signed_message *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_custom_ip_prefix__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_custom_ip_prefix *)

type t = {
  cidr : string prop;
  commissioning_enabled : bool prop;
  id : string prop;
  internet_advertising_disabled : bool prop;
  location : string prop;
  name : string prop;
  parent_custom_ip_prefix_id : string prop;
  resource_group_name : string prop;
  roa_validity_end_date : string prop;
  tags : (string * string) list prop;
  wan_validation_signed_message : string prop;
  zones : string list prop;
}

let azurerm_custom_ip_prefix ?commissioning_enabled ?id
    ?internet_advertising_disabled ?parent_custom_ip_prefix_id
    ?roa_validity_end_date ?tags ?wan_validation_signed_message
    ?zones ?timeouts ~cidr ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_custom_ip_prefix" in
  let __resource =
    ({
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
      : azurerm_custom_ip_prefix)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_custom_ip_prefix __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       commissioning_enabled =
         Prop.computed __resource_type __resource_id
           "commissioning_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       internet_advertising_disabled =
         Prop.computed __resource_type __resource_id
           "internet_advertising_disabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parent_custom_ip_prefix_id =
         Prop.computed __resource_type __resource_id
           "parent_custom_ip_prefix_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       roa_validity_end_date =
         Prop.computed __resource_type __resource_id
           "roa_validity_end_date";
       tags = Prop.computed __resource_type __resource_id "tags";
       wan_validation_signed_message =
         Prop.computed __resource_type __resource_id
           "wan_validation_signed_message";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
