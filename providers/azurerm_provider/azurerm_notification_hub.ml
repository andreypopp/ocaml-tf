(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_notification_hub__apns_credential = {
  application_mode : string;  (** application_mode *)
  bundle_id : string;  (** bundle_id *)
  key_id : string;  (** key_id *)
  team_id : string;  (** team_id *)
  token : string;  (** token *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__apns_credential *)

type azurerm_notification_hub__gcm_credential = {
  api_key : string;  (** api_key *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__gcm_credential *)

type azurerm_notification_hub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub__timeouts *)

type azurerm_notification_hub = {
  location : string;  (** location *)
  name : string;  (** name *)
  namespace_name : string;  (** namespace_name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  apns_credential : azurerm_notification_hub__apns_credential list;
  gcm_credential : azurerm_notification_hub__gcm_credential list;
  timeouts : azurerm_notification_hub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub *)

let azurerm_notification_hub ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential __resource_id =
  let __resource_type = "azurerm_notification_hub" in
  let __resource =
    {
      location;
      name;
      namespace_name;
      resource_group_name;
      tags;
      apns_credential;
      gcm_credential;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_notification_hub __resource);
  ()
