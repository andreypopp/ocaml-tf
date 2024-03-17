(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_static_web_app__basic_auth = {
  environments : string prop;  (** environments *)
  password : string prop;  (** password *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__basic_auth *)

type azurerm_static_web_app__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__identity *)

type azurerm_static_web_app__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__timeouts *)

type azurerm_static_web_app = {
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  configuration_file_changes_enabled : bool prop option; [@option]
      (** configuration_file_changes_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  preview_environments_enabled : bool prop option; [@option]
      (** preview_environments_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_size : string prop option; [@option]  (** sku_size *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  basic_auth : azurerm_static_web_app__basic_auth list;
  identity : azurerm_static_web_app__identity list;
  timeouts : azurerm_static_web_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_web_app *)

let azurerm_static_web_app ?app_settings
    ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~basic_auth ~identity
    __resource_id =
  let __resource_type = "azurerm_static_web_app" in
  let __resource =
    {
      app_settings;
      configuration_file_changes_enabled;
      id;
      location;
      name;
      preview_environments_enabled;
      resource_group_name;
      sku_size;
      sku_tier;
      tags;
      basic_auth;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_static_web_app __resource);
  ()
