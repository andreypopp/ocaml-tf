(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_profile__timeouts *)

type azurerm_cdn_frontdoor_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  response_timeout_seconds : float prop option; [@option]
      (** response_timeout_seconds *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_cdn_frontdoor_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_profile *)

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  response_timeout_seconds : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_cdn_frontdoor_profile ?id ?response_timeout_seconds ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_profile" in
  let __resource =
    ({
       id;
       name;
       resource_group_name;
       response_timeout_seconds;
       sku_name;
       tags;
       timeouts;
     }
      : azurerm_cdn_frontdoor_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_profile __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       resource_guid =
         Prop.computed __resource_type __resource_id "resource_guid";
       response_timeout_seconds =
         Prop.computed __resource_type __resource_id
           "response_timeout_seconds";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
