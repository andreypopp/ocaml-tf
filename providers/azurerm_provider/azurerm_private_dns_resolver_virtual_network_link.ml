(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_virtual_network_link__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_virtual_network_link__timeouts *)

type azurerm_private_dns_resolver_virtual_network_link = {
  dns_forwarding_ruleset_id : string prop;
      (** dns_forwarding_ruleset_id *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts :
    azurerm_private_dns_resolver_virtual_network_link__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_virtual_network_link *)

type t = {
  dns_forwarding_ruleset_id : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  virtual_network_id : string prop;
}

let azurerm_private_dns_resolver_virtual_network_link ?id ?metadata
    ?timeouts ~dns_forwarding_ruleset_id ~name ~virtual_network_id
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_virtual_network_link"
  in
  let __resource =
    ({
       dns_forwarding_ruleset_id;
       id;
       metadata;
       name;
       virtual_network_id;
       timeouts;
     }
      : azurerm_private_dns_resolver_virtual_network_link)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_virtual_network_link
       __resource);
  let __resource_attributes =
    ({
       dns_forwarding_ruleset_id =
         Prop.computed __resource_type __resource_id
           "dns_forwarding_ruleset_id";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes
