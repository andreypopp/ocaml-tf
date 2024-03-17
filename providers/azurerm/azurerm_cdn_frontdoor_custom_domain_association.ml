(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain_association__timeouts *)

type azurerm_cdn_frontdoor_custom_domain_association = {
  cdn_frontdoor_custom_domain_id : string prop;
      (** cdn_frontdoor_custom_domain_id *)
  cdn_frontdoor_route_ids : string prop list;
      (** cdn_frontdoor_route_ids *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    azurerm_cdn_frontdoor_custom_domain_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain_association *)

type t = {
  cdn_frontdoor_custom_domain_id : string prop;
  cdn_frontdoor_route_ids : string list prop;
  id : string prop;
}

let azurerm_cdn_frontdoor_custom_domain_association ?id ?timeouts
    ~cdn_frontdoor_custom_domain_id ~cdn_frontdoor_route_ids
    __resource_id =
  let __resource_type =
    "azurerm_cdn_frontdoor_custom_domain_association"
  in
  let __resource =
    ({
       cdn_frontdoor_custom_domain_id;
       cdn_frontdoor_route_ids;
       id;
       timeouts;
     }
      : azurerm_cdn_frontdoor_custom_domain_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_custom_domain_association
       __resource);
  let __resource_attributes =
    ({
       cdn_frontdoor_custom_domain_id =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_custom_domain_id";
       cdn_frontdoor_route_ids =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_route_ids";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
