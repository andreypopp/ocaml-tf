(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?dns_zone_id ?id ?timeouts ~cdn_frontdoor_profile_id
    ~host_name ~name ~tls __id =
  let __type = "azurerm_cdn_frontdoor_custom_domain" in
  let __attrs =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       dns_zone_id = Prop.computed __type __id "dns_zone_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       validation_token =
         Prop.computed __type __id "validation_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_custom_domain
        (azurerm_cdn_frontdoor_custom_domain ?dns_zone_id ?id
           ?timeouts ~cdn_frontdoor_profile_id ~host_name ~name ~tls
           ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_zone_id ?id ?timeouts
    ~cdn_frontdoor_profile_id ~host_name ~name ~tls __id =
  let (r : _ Tf_core.resource) =
    make ?dns_zone_id ?id ?timeouts ~cdn_frontdoor_profile_id
      ~host_name ~name ~tls __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
