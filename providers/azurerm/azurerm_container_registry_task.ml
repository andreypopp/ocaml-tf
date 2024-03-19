(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type agent_setting = { cpu : float prop  (** cpu *) }
[@@deriving yojson_of]
(** agent_setting *)

type base_image_trigger = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  update_trigger_endpoint : string prop option; [@option]
      (** update_trigger_endpoint *)
  update_trigger_payload_type : string prop option; [@option]
      (** update_trigger_payload_type *)
}
[@@deriving yojson_of]
(** base_image_trigger *)

type docker_step = {
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
(** docker_step *)

type encoded_step = {
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
(** encoded_step *)

type file_step = {
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
(** file_step *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type platform = {
  architecture : string prop option; [@option]  (** architecture *)
  os : string prop;  (** os *)
  variant : string prop option; [@option]  (** variant *)
}
[@@deriving yojson_of]
(** platform *)

type registry_credential__custom = {
  identity : string prop option; [@option]  (** identity *)
  login_server : string prop;  (** login_server *)
  password : string prop option; [@option]  (** password *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** registry_credential__custom *)

type registry_credential__source = {
  login_mode : string prop;  (** login_mode *)
}
[@@deriving yojson_of]
(** registry_credential__source *)

type registry_credential = {
  custom : registry_credential__custom list;
  source : registry_credential__source list;
}
[@@deriving yojson_of]
(** registry_credential *)

type source_trigger__authentication = {
  expire_in_seconds : float prop option; [@option]
      (** expire_in_seconds *)
  refresh_token : string prop option; [@option]  (** refresh_token *)
  scope : string prop option; [@option]  (** scope *)
  token : string prop;  (** token *)
  token_type : string prop;  (** token_type *)
}
[@@deriving yojson_of]
(** source_trigger__authentication *)

type source_trigger = {
  branch : string prop option; [@option]  (** branch *)
  enabled : bool prop option; [@option]  (** enabled *)
  events : string prop list;  (** events *)
  name : string prop;  (** name *)
  repository_url : string prop;  (** repository_url *)
  source_type : string prop;  (** source_type *)
  authentication : source_trigger__authentication list;
}
[@@deriving yojson_of]
(** source_trigger *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type timer_trigger = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
}
[@@deriving yojson_of]
(** timer_trigger *)

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
  agent_setting : agent_setting list;
  base_image_trigger : base_image_trigger list;
  docker_step : docker_step list;
  encoded_step : encoded_step list;
  file_step : file_step list;
  identity : identity list;
  platform : platform list;
  registry_credential : registry_credential list;
  source_trigger : source_trigger list;
  timeouts : timeouts option;
  timer_trigger : timer_trigger list;
}
[@@deriving yojson_of]
(** azurerm_container_registry_task *)

let agent_setting ~cpu () : agent_setting = { cpu }

let base_image_trigger ?enabled ?update_trigger_endpoint
    ?update_trigger_payload_type ~name ~type_ () : base_image_trigger
    =
  {
    enabled;
    name;
    type_;
    update_trigger_endpoint;
    update_trigger_payload_type;
  }

let docker_step ?arguments ?cache_enabled ?image_names ?push_enabled
    ?secret_arguments ?target ~context_access_token ~context_path
    ~dockerfile_path () : docker_step =
  {
    arguments;
    cache_enabled;
    context_access_token;
    context_path;
    dockerfile_path;
    image_names;
    push_enabled;
    secret_arguments;
    target;
  }

let encoded_step ?context_access_token ?context_path ?secret_values
    ?value_content ?values ~task_content () : encoded_step =
  {
    context_access_token;
    context_path;
    secret_values;
    task_content;
    value_content;
    values;
  }

let file_step ?context_access_token ?context_path ?secret_values
    ?value_file_path ?values ~task_file_path () : file_step =
  {
    context_access_token;
    context_path;
    secret_values;
    task_file_path;
    value_file_path;
    values;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let platform ?architecture ?variant ~os () : platform =
  { architecture; os; variant }

let registry_credential__custom ?identity ?password ?username
    ~login_server () : registry_credential__custom =
  { identity; login_server; password; username }

let registry_credential__source ~login_mode () :
    registry_credential__source =
  { login_mode }

let registry_credential ~custom ~source () : registry_credential =
  { custom; source }

let source_trigger__authentication ?expire_in_seconds ?refresh_token
    ?scope ~token ~token_type () : source_trigger__authentication =
  { expire_in_seconds; refresh_token; scope; token; token_type }

let source_trigger ?branch ?enabled ~events ~name ~repository_url
    ~source_type ~authentication () : source_trigger =
  {
    branch;
    enabled;
    events;
    name;
    repository_url;
    source_type;
    authentication;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let timer_trigger ?enabled ~name ~schedule () : timer_trigger =
  { enabled; name; schedule }

let azurerm_container_registry_task ?agent_pool_name ?enabled ?id
    ?is_system_task ?log_template ?tags ?timeout_in_seconds ?timeouts
    ~container_registry_id ~name ~agent_setting ~base_image_trigger
    ~docker_step ~encoded_step ~file_step ~identity ~platform
    ~registry_credential ~source_trigger ~timer_trigger () :
    azurerm_container_registry_task =
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

type t = {
  agent_pool_name : string prop;
  container_registry_id : string prop;
  enabled : bool prop;
  id : string prop;
  is_system_task : bool prop;
  log_template : string prop;
  name : string prop;
  tags : (string * string) list prop;
  timeout_in_seconds : float prop;
}

let register ?tf_module ?agent_pool_name ?enabled ?id ?is_system_task
    ?log_template ?tags ?timeout_in_seconds ?timeouts
    ~container_registry_id ~name ~agent_setting ~base_image_trigger
    ~docker_step ~encoded_step ~file_step ~identity ~platform
    ~registry_credential ~source_trigger ~timer_trigger __resource_id
    =
  let __resource_type = "azurerm_container_registry_task" in
  let __resource =
    azurerm_container_registry_task ?agent_pool_name ?enabled ?id
      ?is_system_task ?log_template ?tags ?timeout_in_seconds
      ?timeouts ~container_registry_id ~name ~agent_setting
      ~base_image_trigger ~docker_step ~encoded_step ~file_step
      ~identity ~platform ~registry_credential ~source_trigger
      ~timer_trigger ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_task __resource);
  let __resource_attributes =
    ({
       agent_pool_name =
         Prop.computed __resource_type __resource_id
           "agent_pool_name";
       container_registry_id =
         Prop.computed __resource_type __resource_id
           "container_registry_id";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       is_system_task =
         Prop.computed __resource_type __resource_id "is_system_task";
       log_template =
         Prop.computed __resource_type __resource_id "log_template";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       timeout_in_seconds =
         Prop.computed __resource_type __resource_id
           "timeout_in_seconds";
     }
      : t)
  in
  __resource_attributes
