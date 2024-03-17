(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cdn_frontdoor_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain__timeouts *)

type azurerm_cdn_frontdoor_custom_domain__tls = {
  cdn_frontdoor_secret_id : string option; [@option]
      (** cdn_frontdoor_secret_id *)
  certificate_type : string option; [@option]
      (** certificate_type *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain__tls *)

type azurerm_cdn_frontdoor_custom_domain = {
  cdn_frontdoor_profile_id : string;  (** cdn_frontdoor_profile_id *)
  dns_zone_id : string option; [@option]  (** dns_zone_id *)
  host_name : string;  (** host_name *)
  name : string;  (** name *)
  timeouts : azurerm_cdn_frontdoor_custom_domain__timeouts option;
  tls : azurerm_cdn_frontdoor_custom_domain__tls list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain *)

let azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_custom_domain" in
  let __resource =
    {
      cdn_frontdoor_profile_id;
      dns_zone_id;
      host_name;
      name;
      timeouts;
      tls;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_custom_domain __resource);
  ()
