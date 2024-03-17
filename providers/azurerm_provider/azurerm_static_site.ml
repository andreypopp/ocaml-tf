(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_static_site__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_static_site__identity *)

type azurerm_static_site__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_static_site__timeouts *)

type azurerm_static_site = {
  app_settings : (string * string) list option; [@option]
      (** app_settings *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_size : string option; [@option]  (** sku_size *)
  sku_tier : string option; [@option]  (** sku_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_static_site__identity list;
  timeouts : azurerm_static_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_site *)

let azurerm_static_site ?app_settings ?sku_size ?sku_tier ?tags
    ?timeouts ~location ~name ~resource_group_name ~identity
    __resource_id =
  let __resource_type = "azurerm_static_site" in
  let __resource =
    {
      app_settings;
      location;
      name;
      resource_group_name;
      sku_size;
      sku_tier;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_static_site __resource);
  ()
