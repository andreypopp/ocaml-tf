(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_zone_virtual_network_link__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_zone_virtual_network_link__timeouts *)

type azurerm_private_dns_zone_virtual_network_link = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  private_dns_zone_name : string;  (** private_dns_zone_name *)
  registration_enabled : bool option; [@option]
      (** registration_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_network_id : string;  (** virtual_network_id *)
  timeouts :
    azurerm_private_dns_zone_virtual_network_link__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_zone_virtual_network_link *)

let azurerm_private_dns_zone_virtual_network_link ?id
    ?registration_enabled ?tags ?timeouts ~name
    ~private_dns_zone_name ~resource_group_name ~virtual_network_id
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_zone_virtual_network_link"
  in
  let __resource =
    {
      id;
      name;
      private_dns_zone_name;
      registration_enabled;
      resource_group_name;
      tags;
      virtual_network_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_zone_virtual_network_link
       __resource);
  ()
