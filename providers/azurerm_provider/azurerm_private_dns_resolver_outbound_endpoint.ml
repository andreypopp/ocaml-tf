(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_outbound_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_outbound_endpoint__timeouts *)

type azurerm_private_dns_resolver_outbound_endpoint = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  private_dns_resolver_id : string;  (** private_dns_resolver_id *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_private_dns_resolver_outbound_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_outbound_endpoint *)

let azurerm_private_dns_resolver_outbound_endpoint ?id ?tags
    ?timeouts ~location ~name ~private_dns_resolver_id ~subnet_id
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_outbound_endpoint"
  in
  let __resource =
    {
      id;
      location;
      name;
      private_dns_resolver_id;
      subnet_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_outbound_endpoint
       __resource);
  ()
