(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_notification_hub__apns_credential = {
  application_mode : string prop;  (** application_mode *)
  bundle_id : string prop;  (** bundle_id *)
  key_id : string prop;  (** key_id *)
  team_id : string prop;  (** team_id *)
  token : string prop;  (** token *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__apns_credential *)

type azurerm_notification_hub__gcm_credential = {
  api_key : string prop;  (** api_key *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__gcm_credential *)

type azurerm_notification_hub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__timeouts *)

type azurerm_notification_hub = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  apns_credential : azurerm_notification_hub__apns_credential list;
  gcm_credential : azurerm_notification_hub__gcm_credential list;
  timeouts : azurerm_notification_hub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_notification_hub ?id ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential __resource_id =
  let __resource_type = "azurerm_notification_hub" in
  let __resource =
    ({
       id;
       location;
       name;
       namespace_name;
       resource_group_name;
       tags;
       apns_credential;
       gcm_credential;
       timeouts;
     }
      : azurerm_notification_hub)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_notification_hub __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
