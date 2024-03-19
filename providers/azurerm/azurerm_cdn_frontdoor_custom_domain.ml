(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type tls = {
  cdn_frontdoor_secret_id : string prop option; [@option]
      (** cdn_frontdoor_secret_id *)
  certificate_type : string prop option; [@option]
      (** certificate_type *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
}
[@@deriving yojson_of]
(** tls *)

type azurerm_cdn_frontdoor_custom_domain = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  dns_zone_id : string prop option; [@option]  (** dns_zone_id *)
  host_name : string prop;  (** host_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
  tls : tls list;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls ?cdn_frontdoor_secret_id ?certificate_type
    ?minimum_tls_version () : tls =
  { cdn_frontdoor_secret_id; certificate_type; minimum_tls_version }

let azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls () :
    azurerm_cdn_frontdoor_custom_domain =
  {
    cdn_frontdoor_profile_id;
    dns_zone_id;
    host_name;
    id;
    name;
    timeouts;
    tls;
  }

type t = {
  cdn_frontdoor_profile_id : string prop;
  dns_zone_id : string prop;
  expiration_date : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  validation_token : string prop;
}

let register ?tf_module ?dns_zone_id ?id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_custom_domain" in
  let __resource =
    azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?id ?timeouts
      ~cdn_frontdoor_profile_id ~host_name ~name ~tls ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_custom_domain __resource);
  let __resource_attributes =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_profile_id";
       dns_zone_id =
         Prop.computed __resource_type __resource_id "dns_zone_id";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       host_name =
         Prop.computed __resource_type __resource_id "host_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       validation_token =
         Prop.computed __resource_type __resource_id
           "validation_token";
     }
      : t)
  in
  __resource_attributes
