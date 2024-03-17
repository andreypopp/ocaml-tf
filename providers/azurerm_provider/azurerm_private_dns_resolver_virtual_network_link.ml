(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_virtual_network_link__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_virtual_network_link__timeouts *)

type azurerm_private_dns_resolver_virtual_network_link = {
  dns_forwarding_ruleset_id : string;
      (** dns_forwarding_ruleset_id *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  virtual_network_id : string;  (** virtual_network_id *)
  timeouts :
    azurerm_private_dns_resolver_virtual_network_link__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_virtual_network_link *)

let azurerm_private_dns_resolver_virtual_network_link ?metadata
    ?timeouts ~dns_forwarding_ruleset_id ~name ~virtual_network_id
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_virtual_network_link"
  in
  let __resource =
    {
      dns_forwarding_ruleset_id;
      metadata;
      name;
      virtual_network_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_virtual_network_link
       __resource);
  ()
