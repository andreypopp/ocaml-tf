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

let azurerm_cdn_frontdoor_profile ?id ?response_timeout_seconds ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_profile" in
  let __resource =
    {
      id;
      name;
      resource_group_name;
      response_timeout_seconds;
      sku_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_profile __resource);
  ()
