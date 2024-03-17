(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts *)

type azurerm_private_dns_resolver_dns_forwarding_ruleset = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_dns_resolver_outbound_endpoint_ids : string prop list;
      (** private_dns_resolver_outbound_endpoint_ids *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_dns_forwarding_ruleset *)

let azurerm_private_dns_resolver_dns_forwarding_ruleset ?id ?tags
    ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_dns_forwarding_ruleset"
  in
  let __resource =
    {
      id;
      location;
      name;
      private_dns_resolver_outbound_endpoint_ids;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_dns_forwarding_ruleset
       __resource);
  ()
