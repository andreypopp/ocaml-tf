(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_static_web_app__basic_auth = {
  environments : string;  (** environments *)
  password : string;  (** password *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__basic_auth *)

type azurerm_static_web_app__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__identity *)

type azurerm_static_web_app__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app__timeouts *)

type azurerm_static_web_app = {
  app_settings : (string * string) list option; [@option]
      (** app_settings *)
  configuration_file_changes_enabled : bool option; [@option]
      (** configuration_file_changes_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  preview_environments_enabled : bool option; [@option]
      (** preview_environments_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_size : string option; [@option]  (** sku_size *)
  sku_tier : string option; [@option]  (** sku_tier *)
  tags : (string * string) list option; [@option]  (** tags *)
  basic_auth : azurerm_static_web_app__basic_auth list;
  identity : azurerm_static_web_app__identity list;
  timeouts : azurerm_static_web_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_web_app *)

let azurerm_static_web_app ?app_settings
    ?configuration_file_changes_enabled ?preview_environments_enabled
    ?sku_size ?sku_tier ?tags ?timeouts ~location ~name
    ~resource_group_name ~basic_auth ~identity __resource_id =
  let __resource_type = "azurerm_static_web_app" in
  let __resource =
    {
      app_settings;
      configuration_file_changes_enabled;
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
