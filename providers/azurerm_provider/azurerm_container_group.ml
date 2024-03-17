(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_group__container__gpu = {
  count : float option; [@option]  (** count *)
  sku : string option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__gpu *)

type azurerm_container_group__container__gpu_limit = {
  count : float option; [@option]  (** count *)
  sku : string option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__gpu_limit *)

type azurerm_container_group__container__liveness_probe__http_get = {
  http_headers : (string * string) list option; [@option]
      (** http_headers *)
  path : string option; [@option]  (** path *)
  port : float option; [@option]  (** port *)
  scheme : string option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__liveness_probe__http_get *)

type azurerm_container_group__container__liveness_probe = {
  exec : string list option; [@option]  (** exec *)
  failure_threshold : float option; [@option]
      (** failure_threshold *)
  initial_delay_seconds : float option; [@option]
      (** initial_delay_seconds *)
  period_seconds : float option; [@option]  (** period_seconds *)
  success_threshold : float option; [@option]
      (** success_threshold *)
  timeout_seconds : float option; [@option]  (** timeout_seconds *)
  http_get :
    azurerm_container_group__container__liveness_probe__http_get list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__liveness_probe *)

type azurerm_container_group__container__ports = {
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__ports *)

type azurerm_container_group__container__readiness_probe__http_get = {
  http_headers : (string * string) list option; [@option]
      (** http_headers *)
  path : string option; [@option]  (** path *)
  port : float option; [@option]  (** port *)
  scheme : string option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__readiness_probe__http_get *)

type azurerm_container_group__container__readiness_probe = {
  exec : string list option; [@option]  (** exec *)
  failure_threshold : float option; [@option]
      (** failure_threshold *)
  initial_delay_seconds : float option; [@option]
      (** initial_delay_seconds *)
  period_seconds : float option; [@option]  (** period_seconds *)
  success_threshold : float option; [@option]
      (** success_threshold *)
  timeout_seconds : float option; [@option]  (** timeout_seconds *)
  http_get :
    azurerm_container_group__container__readiness_probe__http_get
    list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__readiness_probe *)

type azurerm_container_group__container__security = {
  privilege_enabled : bool;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__security *)

type azurerm_container_group__container__volume__git_repo = {
  directory : string option; [@option]  (** directory *)
  revision : string option; [@option]  (** revision *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__volume__git_repo *)

type azurerm_container_group__container__volume = {
  empty_dir : bool option; [@option]  (** empty_dir *)
  mount_path : string;  (** mount_path *)
  name : string;  (** name *)
  read_only : bool option; [@option]  (** read_only *)
  secret : (string * string) list option; [@option]  (** secret *)
  share_name : string option; [@option]  (** share_name *)
  storage_account_key : string option; [@option]
      (** storage_account_key *)
  storage_account_name : string option; [@option]
      (** storage_account_name *)
  git_repo :
    azurerm_container_group__container__volume__git_repo list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__volume *)

type azurerm_container_group__container = {
  commands : string list option; [@option]  (** commands *)
  cpu : float;  (** cpu *)
  cpu_limit : float option; [@option]  (** cpu_limit *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  image : string;  (** image *)
  memory : float;  (** memory *)
  memory_limit : float option; [@option]  (** memory_limit *)
  name : string;  (** name *)
  secure_environment_variables : (string * string) list option;
      [@option]
      (** secure_environment_variables *)
  gpu : azurerm_container_group__container__gpu list;
  gpu_limit : azurerm_container_group__container__gpu_limit list;
  liveness_probe :
    azurerm_container_group__container__liveness_probe list;
  ports : azurerm_container_group__container__ports list;
  readiness_probe :
    azurerm_container_group__container__readiness_probe list;
  security : azurerm_container_group__container__security list;
  volume : azurerm_container_group__container__volume list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container *)

type azurerm_container_group__diagnostics__log_analytics = {
  log_type : string option; [@option]  (** log_type *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  workspace_id : string;  (** workspace_id *)
  workspace_key : string;  (** workspace_key *)
}
[@@deriving yojson_of]
(** azurerm_container_group__diagnostics__log_analytics *)

type azurerm_container_group__diagnostics = {
  log_analytics :
    azurerm_container_group__diagnostics__log_analytics list;
}
[@@deriving yojson_of]
(** azurerm_container_group__diagnostics *)

type azurerm_container_group__dns_config = {
  nameservers : string list;  (** nameservers *)
  options : string list option; [@option]  (** options *)
  search_domains : string list option; [@option]
      (** search_domains *)
}
[@@deriving yojson_of]
(** azurerm_container_group__dns_config *)

type azurerm_container_group__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_group__identity *)

type azurerm_container_group__image_registry_credential = {
  password : string option; [@option]  (** password *)
  server : string;  (** server *)
  user_assigned_identity_id : string option; [@option]
      (** The User Assigned Identity to use for Container Registry access. *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_container_group__image_registry_credential *)

type azurerm_container_group__init_container__security = {
  privilege_enabled : bool;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__security *)

type azurerm_container_group__init_container__volume__git_repo = {
  directory : string option; [@option]  (** directory *)
  revision : string option; [@option]  (** revision *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__volume__git_repo *)

type azurerm_container_group__init_container__volume = {
  empty_dir : bool option; [@option]  (** empty_dir *)
  mount_path : string;  (** mount_path *)
  name : string;  (** name *)
  read_only : bool option; [@option]  (** read_only *)
  secret : (string * string) list option; [@option]  (** secret *)
  share_name : string option; [@option]  (** share_name *)
  storage_account_key : string option; [@option]
      (** storage_account_key *)
  storage_account_name : string option; [@option]
      (** storage_account_name *)
  git_repo :
    azurerm_container_group__init_container__volume__git_repo list;
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__volume *)

type azurerm_container_group__init_container = {
  commands : string list option; [@option]  (** commands *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  image : string;  (** image *)
  name : string;  (** name *)
  secure_environment_variables : (string * string) list option;
      [@option]
      (** secure_environment_variables *)
  security : azurerm_container_group__init_container__security list;
  volume : azurerm_container_group__init_container__volume list;
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container *)

type azurerm_container_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_group__timeouts *)

type azurerm_container_group__exposed_port = {
  port : float;  (** port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]

type azurerm_container_group = {
  dns_name_label : string option; [@option]  (** dns_name_label *)
  dns_name_label_reuse_policy : string option; [@option]
      (** dns_name_label_reuse_policy *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  key_vault_user_assigned_identity_id : string option; [@option]
      (** key_vault_user_assigned_identity_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  os_type : string;  (** os_type *)
  priority : string option; [@option]  (** priority *)
  resource_group_name : string;  (** resource_group_name *)
  restart_policy : string option; [@option]  (** restart_policy *)
  sku : string option; [@option]  (** sku *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
  container : azurerm_container_group__container list;
  diagnostics : azurerm_container_group__diagnostics list;
  dns_config : azurerm_container_group__dns_config list;
  identity : azurerm_container_group__identity list;
  image_registry_credential :
    azurerm_container_group__image_registry_credential list;
  init_container : azurerm_container_group__init_container list;
  timeouts : azurerm_container_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_group *)

let azurerm_container_group ?dns_name_label
    ?dns_name_label_reuse_policy ?ip_address_type ?key_vault_key_id
    ?key_vault_user_assigned_identity_id ?priority ?restart_policy
    ?sku ?subnet_ids ?tags ?zones ?timeouts ~location ~name ~os_type
    ~resource_group_name ~container ~diagnostics ~dns_config
    ~identity ~image_registry_credential ~init_container
    __resource_id =
  let __resource_type = "azurerm_container_group" in
  let __resource =
    {
      dns_name_label;
      dns_name_label_reuse_policy;
      ip_address_type;
      key_vault_key_id;
      key_vault_user_assigned_identity_id;
      location;
      name;
      os_type;
      priority;
      resource_group_name;
      restart_policy;
      sku;
      subnet_ids;
      tags;
      zones;
      container;
      diagnostics;
      dns_config;
      identity;
      image_registry_credential;
      init_container;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_group __resource);
  ()
