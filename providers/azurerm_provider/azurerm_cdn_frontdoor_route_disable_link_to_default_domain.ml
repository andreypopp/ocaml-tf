(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts *)

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain = {
  cdn_frontdoor_custom_domain_ids : string list;
      (** cdn_frontdoor_custom_domain_ids *)
  cdn_frontdoor_route_id : string;  (** cdn_frontdoor_route_id *)
  timeouts :
    azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route_disable_link_to_default_domain *)

let azurerm_cdn_frontdoor_route_disable_link_to_default_domain
    ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id __resource_id =
  let __resource_type =
    "azurerm_cdn_frontdoor_route_disable_link_to_default_domain"
  in
  let __resource =
    {
      cdn_frontdoor_custom_domain_ids;
      cdn_frontdoor_route_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain
       __resource);
  ()
