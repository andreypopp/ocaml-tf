(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_task__agent_setting = {
  cpu : float;  (** cpu *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__agent_setting *)

type azurerm_container_registry_task__base_image_trigger = {
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  update_trigger_endpoint : string option; [@option]
      (** update_trigger_endpoint *)
  update_trigger_payload_type : string option; [@option]
      (** update_trigger_payload_type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__base_image_trigger *)

type azurerm_container_registry_task__docker_step = {
  arguments : (string * string) list option; [@option]
      (** arguments *)
  cache_enabled : bool option; [@option]  (** cache_enabled *)
  context_access_token : string;  (** context_access_token *)
  context_path : string;  (** context_path *)
  dockerfile_path : string;  (** dockerfile_path *)
  image_names : string list option; [@option]  (** image_names *)
  push_enabled : bool option; [@option]  (** push_enabled *)
  secret_arguments : (string * string) list option; [@option]
      (** secret_arguments *)
  target : string option; [@option]  (** target *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__docker_step *)

type azurerm_container_registry_task__encoded_step = {
  context_access_token : string option; [@option]
      (** context_access_token *)
  context_path : string option; [@option]  (** context_path *)
  secret_values : (string * string) list option; [@option]
      (** secret_values *)
  task_content : string;  (** task_content *)
  value_content : string option; [@option]  (** value_content *)
  values : (string * string) list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__encoded_step *)

type azurerm_container_registry_task__file_step = {
  context_access_token : string option; [@option]
      (** context_access_token *)
  context_path : string option; [@option]  (** context_path *)
  secret_values : (string * string) list option; [@option]
      (** secret_values *)
  task_file_path : string;  (** task_file_path *)
  value_file_path : string option; [@option]  (** value_file_path *)
  values : (string * string) list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__file_step *)

type azurerm_container_registry_task__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__identity *)

type azurerm_container_registry_task__platform = {
  architecture : string option; [@option]  (** architecture *)
  os : string;  (** os *)
  variant : string option; [@option]  (** variant *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__platform *)

type azurerm_container_registry_task__registry_credential__custom = {
  identity : string option; [@option]  (** identity *)
  login_server : string;  (** login_server *)
  password : string option; [@option]  (** password *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__registry_credential__custom *)

type azurerm_container_registry_task__registry_credential__source = {
  login_mode : string;  (** login_mode *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__registry_credential__source *)

type azurerm_container_registry_task__registry_credential = {
  custom :
    azurerm_container_registry_task__registry_credential__custom list;
  source :
    azurerm_container_registry_task__registry_credential__source list;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__registry_credential *)

type azurerm_container_registry_task__source_trigger__authentication = {
  expire_in_seconds : float option; [@option]
      (** expire_in_seconds *)
  refresh_token : string option; [@option]  (** refresh_token *)
  scope : string option; [@option]  (** scope *)
  token : string;  (** token *)
  token_type : string;  (** token_type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__source_trigger__authentication *)

type azurerm_container_registry_task__source_trigger = {
  branch : string option; [@option]  (** branch *)
  enabled : bool option; [@option]  (** enabled *)
  events : string list;  (** events *)
  name : string;  (** name *)
  repository_url : string;  (** repository_url *)
  source_type : string;  (** source_type *)
  authentication :
    azurerm_container_registry_task__source_trigger__authentication
    list;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__source_trigger *)

type azurerm_container_registry_task__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__timeouts *)

type azurerm_container_registry_task__timer_trigger = {
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  schedule : string;  (** schedule *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__timer_trigger *)

type azurerm_container_registry_task = {
  agent_pool_name : string option; [@option]  (** agent_pool_name *)
  container_registry_id : string;  (** container_registry_id *)
  enabled : bool option; [@option]  (** enabled *)
  is_system_task : bool option; [@option]  (** is_system_task *)
  log_template : string option; [@option]  (** log_template *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  agent_setting :
    azurerm_container_registry_task__agent_setting list;
  base_image_trigger :
    azurerm_container_registry_task__base_image_trigger list;
  docker_step : azurerm_container_registry_task__docker_step list;
  encoded_step : azurerm_container_registry_task__encoded_step list;
  file_step : azurerm_container_registry_task__file_step list;
  identity : azurerm_container_registry_task__identity list;
  platform : azurerm_container_registry_task__platform list;
  registry_credential :
    azurerm_container_registry_task__registry_credential list;
  source_trigger :
    azurerm_container_registry_task__source_trigger list;
  timeouts : azurerm_container_registry_task__timeouts option;
  timer_trigger : azurerm_container_registry_task__timer_trigger list;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task *)

let azurerm_container_registry_task ?agent_pool_name ?enabled
    ?is_system_task ?log_template ?tags ?timeout_in_seconds ?timeouts
    ~container_registry_id ~name ~agent_setting ~base_image_trigger
    ~docker_step ~encoded_step ~file_step ~identity ~platform
    ~registry_credential ~source_trigger ~timer_trigger __resource_id
    =
  let __resource_type = "azurerm_container_registry_task" in
  let __resource =
    {
      agent_pool_name;
      container_registry_id;
      enabled;
      is_system_task;
      log_template;
      name;
      tags;
      timeout_in_seconds;
      agent_setting;
      base_image_trigger;
      docker_step;
      encoded_step;
      file_step;
      identity;
      platform;
      registry_credential;
      source_trigger;
      timeouts;
      timer_trigger;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_task __resource);
  ()
