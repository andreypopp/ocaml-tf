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

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain = {
  cdn_frontdoor_custom_domain_ids : string prop list;
      (** cdn_frontdoor_custom_domain_ids *)
  cdn_frontdoor_route_id : string prop;
      (** cdn_frontdoor_route_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_route_disable_link_to_default_domain *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_route_disable_link_to_default_domain ?id
    ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id () :
    azurerm_cdn_frontdoor_route_disable_link_to_default_domain =
  {
    cdn_frontdoor_custom_domain_ids;
    cdn_frontdoor_route_id;
    id;
    timeouts;
  }

type t = {
  cdn_frontdoor_custom_domain_ids : string list prop;
  cdn_frontdoor_route_id : string prop;
  id : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id __id =
  let __type =
    "azurerm_cdn_frontdoor_route_disable_link_to_default_domain"
  in
  let __attrs =
    ({
       cdn_frontdoor_custom_domain_ids =
         Prop.computed __type __id "cdn_frontdoor_custom_domain_ids";
       cdn_frontdoor_route_id =
         Prop.computed __type __id "cdn_frontdoor_route_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain
        (azurerm_cdn_frontdoor_route_disable_link_to_default_domain
           ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
           ~cdn_frontdoor_route_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~cdn_frontdoor_custom_domain_ids ~cdn_frontdoor_route_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
      ~cdn_frontdoor_route_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
