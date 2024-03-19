(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type notification = {
  action : string prop;  (** action *)
  digest : string prop option; [@option]  (** digest *)
  name : string prop;  (** name *)
  tag : string prop option; [@option]  (** tag *)
}
[@@deriving yojson_of]
(** notification *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  notification : notification list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_connected_registry *)

let notification ?digest ?tag ~action ~name () : notification =
  { action; digest; name; tag }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_connected_registry ?audit_log_enabled
    ?client_token_ids ?id ?log_level ?mode ?parent_registry_id
    ?sync_message_ttl ?sync_schedule ?sync_window ?timeouts
    ~container_registry_id ~name ~sync_token_id ~notification () :
    azurerm_container_connected_registry =
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

type t = {
  audit_log_enabled : bool prop;
  client_token_ids : string list prop;
  container_registry_id : string prop;
  id : string prop;
  log_level : string prop;
  mode : string prop;
  name : string prop;
  parent_registry_id : string prop;
  sync_message_ttl : string prop;
  sync_schedule : string prop;
  sync_token_id : string prop;
  sync_window : string prop;
}

let register ?tf_module ?audit_log_enabled ?client_token_ids ?id
    ?log_level ?mode ?parent_registry_id ?sync_message_ttl
    ?sync_schedule ?sync_window ?timeouts ~container_registry_id
    ~name ~sync_token_id ~notification __resource_id =
  let __resource_type = "azurerm_container_connected_registry" in
  let __resource =
    azurerm_container_connected_registry ?audit_log_enabled
      ?client_token_ids ?id ?log_level ?mode ?parent_registry_id
      ?sync_message_ttl ?sync_schedule ?sync_window ?timeouts
      ~container_registry_id ~name ~sync_token_id ~notification ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_connected_registry __resource);
  let __resource_attributes =
    ({
       audit_log_enabled =
         Prop.computed __resource_type __resource_id
           "audit_log_enabled";
       client_token_ids =
         Prop.computed __resource_type __resource_id
           "client_token_ids";
       container_registry_id =
         Prop.computed __resource_type __resource_id
           "container_registry_id";
       id = Prop.computed __resource_type __resource_id "id";
       log_level =
         Prop.computed __resource_type __resource_id "log_level";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       parent_registry_id =
         Prop.computed __resource_type __resource_id
           "parent_registry_id";
       sync_message_ttl =
         Prop.computed __resource_type __resource_id
           "sync_message_ttl";
       sync_schedule =
         Prop.computed __resource_type __resource_id "sync_schedule";
       sync_token_id =
         Prop.computed __resource_type __resource_id "sync_token_id";
       sync_window =
         Prop.computed __resource_type __resource_id "sync_window";
     }
      : t)
  in
  __resource_attributes
