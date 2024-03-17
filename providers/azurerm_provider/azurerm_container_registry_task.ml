(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_task__agent_setting = {
  cpu : float prop;  (** cpu *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__agent_setting *)

type azurerm_container_registry_task__base_image_trigger = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  update_trigger_endpoint : string prop option; [@option]
      (** update_trigger_endpoint *)
  update_trigger_payload_type : string prop option; [@option]
      (** update_trigger_payload_type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__base_image_trigger *)

type azurerm_container_registry_task__docker_step = {
  arguments : (string * string prop) list option; [@option]
      (** arguments *)
  cache_enabled : bool prop option; [@option]  (** cache_enabled *)
  context_access_token : string prop;  (** context_access_token *)
  context_path : string prop;  (** context_path *)
  dockerfile_path : string prop;  (** dockerfile_path *)
  image_names : string prop list option; [@option]
      (** image_names *)
  push_enabled : bool prop option; [@option]  (** push_enabled *)
  secret_arguments : (string * string prop) list option; [@option]
      (** secret_arguments *)
  target : string prop option; [@option]  (** target *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__docker_step *)

type azurerm_container_registry_task__encoded_step = {
  context_access_token : string prop option; [@option]
      (** context_access_token *)
  context_path : string prop option; [@option]  (** context_path *)
  secret_values : (string * string prop) list option; [@option]
      (** secret_values *)
  task_content : string prop;  (** task_content *)
  value_content : string prop option; [@option]  (** value_content *)
  values : (string * string prop) list option; [@option]
      (** values *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__encoded_step *)

type azurerm_container_registry_task__file_step = {
  context_access_token : string prop option; [@option]
      (** context_access_token *)
  context_path : string prop option; [@option]  (** context_path *)
  secret_values : (string * string prop) list option; [@option]
      (** secret_values *)
  task_file_path : string prop;  (** task_file_path *)
  value_file_path : string prop option; [@option]
      (** value_file_path *)
  values : (string * string prop) list option; [@option]
      (** values *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__file_step *)

type azurerm_container_registry_task__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__identity *)

type azurerm_container_registry_task__platform = {
  architecture : string prop option; [@option]  (** architecture *)
  os : string prop;  (** os *)
  variant : string prop option; [@option]  (** variant *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__platform *)

type azurerm_container_registry_task__registry_credential__custom = {
  identity : string prop option; [@option]  (** identity *)
  login_server : string prop;  (** login_server *)
  password : string prop option; [@option]  (** password *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__registry_credential__custom *)

type azurerm_container_registry_task__registry_credential__source = {
  login_mode : string prop;  (** login_mode *)
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
  expire_in_seconds : float prop option; [@option]
      (** expire_in_seconds *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  scope : string prop option; [@option]  (** scope *)
  token : string prop;  (** token *)
  token_type : string prop;  (** token_type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__source_trigger__authentication *)

type azurerm_container_registry_task__source_trigger = {
  branch : string prop option; [@option]  (** branch *)
  enabled : bool prop option; [@option]  (** enabled *)
  events : string prop list;  (** events *)
  name : string prop;  (** name *)
  repository_url : string prop;  (** repository_url *)
  source_type : string prop;  (** source_type *)
  authentication :
    azurerm_container_registry_task__source_trigger__authentication
    list;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__source_trigger *)

type azurerm_container_registry_task__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__timeouts *)

type azurerm_container_registry_task__timer_trigger = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_task__timer_trigger *)

type azurerm_container_registry_task = {
  agent_pool_name : string prop option; [@option]
      (** agent_pool_name *)
  container_registry_id : string prop;  (** container_registry_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  is_system_task : bool prop option; [@option]  (** is_system_task *)
  log_template : string prop option; [@option]  (** log_template *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeout_in_seconds : float prop option; [@option]
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

let azurerm_container_registry_task ?agent_pool_name ?enabled ?id
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
      id;
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
