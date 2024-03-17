(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dedicated_hardware_security_module__management_network_profile = {
  network_interface_private_ip_addresses : string prop list;
      (** network_interface_private_ip_addresses *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_hardware_security_module__management_network_profile *)

type azurerm_dedicated_hardware_security_module__network_profile = {
  network_interface_private_ip_addresses : string prop list;
      (** network_interface_private_ip_addresses *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_hardware_security_module__network_profile *)

type azurerm_dedicated_hardware_security_module__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dedicated_hardware_security_module__timeouts *)

type azurerm_dedicated_hardware_security_module = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  stamp_id : string prop option; [@option]  (** stamp_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  management_network_profile :
    azurerm_dedicated_hardware_security_module__management_network_profile
    list;
  network_profile :
    azurerm_dedicated_hardware_security_module__network_profile list;
  timeouts :
    azurerm_dedicated_hardware_security_module__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dedicated_hardware_security_module *)

let azurerm_dedicated_hardware_security_module ?id ?stamp_id ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name ~sku_name
    ~management_network_profile ~network_profile __resource_id =
  let __resource_type =
    "azurerm_dedicated_hardware_security_module"
  in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      sku_name;
      stamp_id;
      tags;
      zones;
      management_network_profile;
      network_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dedicated_hardware_security_module __resource);
  ()
