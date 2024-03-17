(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain_association__timeouts *)

type azurerm_cdn_frontdoor_custom_domain_association = {
  cdn_frontdoor_custom_domain_id : string;
      (** cdn_frontdoor_custom_domain_id *)
  cdn_frontdoor_route_ids : string list;
      (** cdn_frontdoor_route_ids *)
  id : string option; [@option]  (** id *)
  timeouts :
    azurerm_cdn_frontdoor_custom_domain_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain_association *)

let azurerm_cdn_frontdoor_custom_domain_association ?id ?timeouts
    ~cdn_frontdoor_custom_domain_id ~cdn_frontdoor_route_ids
    __resource_id =
  let __resource_type =
    "azurerm_cdn_frontdoor_custom_domain_association"
  in
  let __resource =
    {
      cdn_frontdoor_custom_domain_id;
      cdn_frontdoor_route_ids;
      id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_custom_domain_association
       __resource);
  ()
