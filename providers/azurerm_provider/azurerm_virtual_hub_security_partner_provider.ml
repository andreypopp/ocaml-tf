(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_virtual_hub_security_partner_provider__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_security_partner_provider__timeouts *)

type azurerm_virtual_hub_security_partner_provider = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  security_provider_name : string;  (** security_provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_hub_id : string option; [@option]  (** virtual_hub_id *)
  timeouts :
    azurerm_virtual_hub_security_partner_provider__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_security_partner_provider *)

let azurerm_virtual_hub_security_partner_provider ?tags
    ?virtual_hub_id ?timeouts ~location ~name ~resource_group_name
    ~security_provider_name __resource_id =
  let __resource_type =
    "azurerm_virtual_hub_security_partner_provider"
  in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      security_provider_name;
      tags;
      virtual_hub_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_security_partner_provider
       __resource);
  ()
