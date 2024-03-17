(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_security_partner_provider__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_security_partner_provider__timeouts *)

type azurerm_virtual_hub_security_partner_provider = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  security_provider_name : string prop;
      (** security_provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop option; [@option]
      (** virtual_hub_id *)
  timeouts :
    azurerm_virtual_hub_security_partner_provider__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_security_partner_provider *)

let azurerm_virtual_hub_security_partner_provider ?id ?tags
    ?virtual_hub_id ?timeouts ~location ~name ~resource_group_name
    ~security_provider_name __resource_id =
  let __resource_type =
    "azurerm_virtual_hub_security_partner_provider"
  in
  let __resource =
    {
      id;
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
