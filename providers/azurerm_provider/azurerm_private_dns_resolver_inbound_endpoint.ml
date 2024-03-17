(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_inbound_endpoint__ip_configurations = {
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_allocation_method : string option; [@option]
      (** private_ip_allocation_method *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint__ip_configurations *)

type azurerm_private_dns_resolver_inbound_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint__timeouts *)

type azurerm_private_dns_resolver_inbound_endpoint = {
  location : string;  (** location *)
  name : string;  (** name *)
  private_dns_resolver_id : string;  (** private_dns_resolver_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  ip_configurations :
    azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
    list;
  timeouts :
    azurerm_private_dns_resolver_inbound_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint *)

let azurerm_private_dns_resolver_inbound_endpoint ?tags ?timeouts
    ~location ~name ~private_dns_resolver_id ~ip_configurations
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_inbound_endpoint"
  in
  let __resource =
    {
      location;
      name;
      private_dns_resolver_id;
      tags;
      ip_configurations;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_inbound_endpoint
       __resource);
  ()
