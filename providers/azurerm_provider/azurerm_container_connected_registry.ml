(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_connected_registry__notification = {
  action : string prop;  (** action *)
  digest : string prop option; [@option]  (** digest *)
  name : string prop;  (** name *)
  tag : string prop option; [@option]  (** tag *)
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry__notification *)

type azurerm_container_connected_registry__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry__timeouts *)

type azurerm_container_connected_registry = {
  audit_log_enabled : bool prop option; [@option]
      (** audit_log_enabled *)
  client_token_ids : string prop list option; [@option]
      (** client_token_ids *)
  container_registry_id : string prop;  (** container_registry_id *)
  id : string prop option; [@option]  (** id *)
  log_level : string prop option; [@option]  (** log_level *)
  mode : string prop option; [@option]  (** mode *)
  name : string prop;  (** name *)
  parent_registry_id : string prop option; [@option]
      (** parent_registry_id *)
  sync_message_ttl : string prop option; [@option]
      (** sync_message_ttl *)
  sync_schedule : string prop option; [@option]  (** sync_schedule *)
  sync_token_id : string prop;  (** sync_token_id *)
  sync_window : string prop option; [@option]  (** sync_window *)
  notification :
    azurerm_container_connected_registry__notification list;
  timeouts : azurerm_container_connected_registry__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry *)

let azurerm_container_connected_registry ?audit_log_enabled
    ?client_token_ids ?id ?log_level ?mode ?parent_registry_id
    ?sync_message_ttl ?sync_schedule ?sync_window ?timeouts
    ~container_registry_id ~name ~sync_token_id ~notification
    __resource_id =
  let __resource_type = "azurerm_container_connected_registry" in
  let __resource =
    {
      audit_log_enabled;
      client_token_ids;
      container_registry_id;
      id;
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
