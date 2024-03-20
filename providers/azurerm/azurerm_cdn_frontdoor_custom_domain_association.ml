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

type azurerm_cdn_frontdoor_custom_domain_association = {
  cdn_frontdoor_custom_domain_id : string prop;
      (** cdn_frontdoor_custom_domain_id *)
  cdn_frontdoor_route_ids : string prop list;
      (** cdn_frontdoor_route_ids *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_custom_domain_association *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_custom_domain_association ?id ?timeouts
    ~cdn_frontdoor_custom_domain_id ~cdn_frontdoor_route_ids () :
    azurerm_cdn_frontdoor_custom_domain_association =
  {
    cdn_frontdoor_custom_domain_id;
    cdn_frontdoor_route_ids;
    id;
    timeouts;
  }

type t = {
  cdn_frontdoor_custom_domain_id : string prop;
  cdn_frontdoor_route_ids : string list prop;
  id : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_custom_domain_id
    ~cdn_frontdoor_route_ids __id =
  let __type = "azurerm_cdn_frontdoor_custom_domain_association" in
  let __attrs =
    ({
       cdn_frontdoor_custom_domain_id =
         Prop.computed __type __id "cdn_frontdoor_custom_domain_id";
       cdn_frontdoor_route_ids =
         Prop.computed __type __id "cdn_frontdoor_route_ids";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_custom_domain_association
        (azurerm_cdn_frontdoor_custom_domain_association ?id
           ?timeouts ~cdn_frontdoor_custom_domain_id
           ~cdn_frontdoor_route_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_custom_domain_id
    ~cdn_frontdoor_route_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_custom_domain_id
      ~cdn_frontdoor_route_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
