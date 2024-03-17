(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_container_connected_registry__notification = {
  action : string;  (** action *)
  digest : string option; [@option]  (** digest *)
  name : string;  (** name *)
  tag : string option; [@option]  (** tag *)
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry__notification *)

type azurerm_container_connected_registry__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry__timeouts *)

type azurerm_container_connected_registry = {
  audit_log_enabled : bool option; [@option]
      (** audit_log_enabled *)
  client_token_ids : string list option; [@option]
      (** client_token_ids *)
  container_registry_id : string;  (** container_registry_id *)
  log_level : string option; [@option]  (** log_level *)
  mode : string option; [@option]  (** mode *)
  name : string;  (** name *)
  parent_registry_id : string option; [@option]
      (** parent_registry_id *)
  sync_message_ttl : string option; [@option]
      (** sync_message_ttl *)
  sync_schedule : string option; [@option]  (** sync_schedule *)
  sync_token_id : string;  (** sync_token_id *)
  sync_window : string option; [@option]  (** sync_window *)
  notification :
    azurerm_container_connected_registry__notification list;
  timeouts : azurerm_container_connected_registry__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry *)

let azurerm_container_connected_registry ?audit_log_enabled
    ?client_token_ids ?log_level ?mode ?parent_registry_id
    ?sync_message_ttl ?sync_schedule ?sync_window ?timeouts
    ~container_registry_id ~name ~sync_token_id ~notification
    __resource_id =
  let __resource_type = "azurerm_container_connected_registry" in
  let __resource =
    {
      audit_log_enabled;
      client_token_ids;
      container_registry_id;
      log_level;
      mode;
      name;
      parent_registry_id;
      sync_message_ttl;
      sync_schedule;
      sync_token_id;
      sync_window;
      notification;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_connected_registry __resource);
  ()
