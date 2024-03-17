(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts *)

type azurerm_private_dns_resolver_dns_forwarding_ruleset = {
  location : string;  (** location *)
  name : string;  (** name *)
  private_dns_resolver_outbound_endpoint_ids : string list;
      (** private_dns_resolver_outbound_endpoint_ids *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_private_dns_resolver_dns_forwarding_ruleset__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_dns_forwarding_ruleset *)

let azurerm_private_dns_resolver_dns_forwarding_ruleset ?tags
    ?timeouts ~location ~name
    ~private_dns_resolver_outbound_endpoint_ids ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_dns_forwarding_ruleset"
  in
  let __resource =
    {
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
