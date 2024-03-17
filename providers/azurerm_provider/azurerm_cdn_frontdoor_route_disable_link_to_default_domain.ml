(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts *)

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain = {
  cdn_frontdoor_custom_domain_ids : string prop list;
      (** cdn_frontdoor_custom_domain_ids *)
  cdn_frontdoor_route_id : string prop;
      (** cdn_frontdoor_route_id *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    azurerm_cdn_frontdoor_route_disable_link_to_default_domain__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route_disable_link_to_default_domain *)

let azurerm_cdn_frontdoor_route_disable_link_to_default_domain ?id
    ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id __resource_id =
  let __resource_type =
    "azurerm_cdn_frontdoor_route_disable_link_to_default_domain"
  in
  let __resource =
    {
      cdn_frontdoor_custom_domain_ids;
      cdn_frontdoor_route_id;
      id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain
       __resource);
  ()
