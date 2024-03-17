(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cdn_frontdoor_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_profile__timeouts *)

type azurerm_cdn_frontdoor_profile = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  response_timeout_seconds : float option; [@option]
      (** response_timeout_seconds *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_cdn_frontdoor_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_profile *)

let azurerm_cdn_frontdoor_profile ?response_timeout_seconds ?tags
    ?timeouts ~name ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_profile" in
  let __resource =
    {
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
