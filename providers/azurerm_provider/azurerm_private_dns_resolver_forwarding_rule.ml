(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_forwarding_rule__target_dns_servers = {
  ip_address : string;  (** ip_address *)
  port : float option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_forwarding_rule__target_dns_servers *)

type azurerm_private_dns_resolver_forwarding_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_forwarding_rule__timeouts *)

type azurerm_private_dns_resolver_forwarding_rule = {
  dns_forwarding_ruleset_id : string;
      (** dns_forwarding_ruleset_id *)
  domain_name : string;  (** domain_name *)
  enabled : bool option; [@option]  (** enabled *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  target_dns_servers :
    azurerm_private_dns_resolver_forwarding_rule__target_dns_servers
    list;
  timeouts :
    azurerm_private_dns_resolver_forwarding_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_forwarding_rule *)

let azurerm_private_dns_resolver_forwarding_rule ?enabled ?metadata
    ?timeouts ~dns_forwarding_ruleset_id ~domain_name ~name
    ~target_dns_servers __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_forwarding_rule"
  in
  let __resource =
    {
      dns_forwarding_ruleset_id;
      domain_name;
      enabled;
      metadata;
      name;
      target_dns_servers;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_forwarding_rule
       __resource);
  ()
