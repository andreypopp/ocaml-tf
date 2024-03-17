(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_static_site__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_static_site__identity *)

type azurerm_static_site__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_static_site__timeouts *)

type azurerm_static_site = {
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_size : string prop option; [@option]  (** sku_size *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_static_site__identity list;
  timeouts : azurerm_static_site__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_site *)

let azurerm_static_site ?app_settings ?id ?sku_size ?sku_tier ?tags
    ?timeouts ~location ~name ~resource_group_name ~identity
    __resource_id =
  let __resource_type = "azurerm_static_site" in
  let __resource =
    {
      app_settings;
      id;
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
