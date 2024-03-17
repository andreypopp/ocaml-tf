(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_group__container__gpu = {
  count : float prop option; [@option]  (** count *)
  sku : string prop option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__gpu *)

type azurerm_container_group__container__gpu_limit = {
  count : float prop option; [@option]  (** count *)
  sku : string prop option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__gpu_limit *)

type azurerm_container_group__container__liveness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
      (** http_headers *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__liveness_probe__http_get *)

type azurerm_container_group__container__liveness_probe = {
  exec : string prop list option; [@option]  (** exec *)
  failure_threshold : float prop option; [@option]
      (** failure_threshold *)
  initial_delay_seconds : float prop option; [@option]
      (** initial_delay_seconds *)
  period_seconds : float prop option; [@option]
      (** period_seconds *)
  success_threshold : float prop option; [@option]
      (** success_threshold *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
  http_get :
    azurerm_container_group__container__liveness_probe__http_get list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__liveness_probe *)

type azurerm_container_group__container__ports = {
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__ports *)

type azurerm_container_group__container__readiness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
      (** http_headers *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__readiness_probe__http_get *)

type azurerm_container_group__container__readiness_probe = {
  exec : string prop list option; [@option]  (** exec *)
  failure_threshold : float prop option; [@option]
      (** failure_threshold *)
  initial_delay_seconds : float prop option; [@option]
      (** initial_delay_seconds *)
  period_seconds : float prop option; [@option]
      (** period_seconds *)
  success_threshold : float prop option; [@option]
      (** success_threshold *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
  http_get :
    azurerm_container_group__container__readiness_probe__http_get
    list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__readiness_probe *)

type azurerm_container_group__container__security = {
  privilege_enabled : bool prop;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__security *)

type azurerm_container_group__container__volume__git_repo = {
  directory : string prop option; [@option]  (** directory *)
  revision : string prop option; [@option]  (** revision *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_container_group__container__volume__git_repo *)

type azurerm_container_group__container__volume = {
  empty_dir : bool prop option; [@option]  (** empty_dir *)
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  read_only : bool prop option; [@option]  (** read_only *)
  secret : (string * string prop) list option; [@option]
      (** secret *)
  share_name : string prop option; [@option]  (** share_name *)
  storage_account_key : string prop option; [@option]
      (** storage_account_key *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  git_repo :
    azurerm_container_group__container__volume__git_repo list;
}
[@@deriving yojson_of]
(** azurerm_container_group__container__volume *)

type azurerm_container_group__container = {
  commands : string prop list option; [@option]  (** commands *)
  cpu : float prop;  (** cpu *)
  cpu_limit : float prop option; [@option]  (** cpu_limit *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  image : string prop;  (** image *)
  memory : float prop;  (** memory *)
  memory_limit : float prop option; [@option]  (** memory_limit *)
  name : string prop;  (** name *)
  secure_environment_variables : (string * string prop) list option;
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
  log_type : string prop option; [@option]  (** log_type *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  workspace_id : string prop;  (** workspace_id *)
  workspace_key : string prop;  (** workspace_key *)
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
  nameservers : string prop list;  (** nameservers *)
  options : string prop list option; [@option]  (** options *)
  search_domains : string prop list option; [@option]
      (** search_domains *)
}
[@@deriving yojson_of]
(** azurerm_container_group__dns_config *)

type azurerm_container_group__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_group__identity *)

type azurerm_container_group__image_registry_credential = {
  password : string prop option; [@option]  (** password *)
  server : string prop;  (** server *)
  user_assigned_identity_id : string prop option; [@option]
      (** The User Assigned Identity to use for Container Registry access. *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** azurerm_container_group__image_registry_credential *)

type azurerm_container_group__init_container__security = {
  privilege_enabled : bool prop;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__security *)

type azurerm_container_group__init_container__volume__git_repo = {
  directory : string prop option; [@option]  (** directory *)
  revision : string prop option; [@option]  (** revision *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__volume__git_repo *)

type azurerm_container_group__init_container__volume = {
  empty_dir : bool prop option; [@option]  (** empty_dir *)
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  read_only : bool prop option; [@option]  (** read_only *)
  secret : (string * string prop) list option; [@option]
      (** secret *)
  share_name : string prop option; [@option]  (** share_name *)
  storage_account_key : string prop option; [@option]
      (** storage_account_key *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  git_repo :
    azurerm_container_group__init_container__volume__git_repo list;
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container__volume *)

type azurerm_container_group__init_container = {
  commands : string prop list option; [@option]  (** commands *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  secure_environment_variables : (string * string prop) list option;
      [@option]
      (** secure_environment_variables *)
  security : azurerm_container_group__init_container__security list;
  volume : azurerm_container_group__init_container__volume list;
}
[@@deriving yojson_of]
(** azurerm_container_group__init_container *)

type azurerm_container_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_group__timeouts *)

type azurerm_container_group__exposed_port = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type azurerm_container_group = {
  dns_name_label : string prop option; [@option]
      (** dns_name_label *)
  dns_name_label_reuse_policy : string prop option; [@option]
      (** dns_name_label_reuse_policy *)
  exposed_port : azurerm_container_group__exposed_port list option;
      [@option]
      (** exposed_port *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  key_vault_user_assigned_identity_id : string prop option; [@option]
      (** key_vault_user_assigned_identity_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_profile_id : string prop option; [@option]
      (** network_profile_id *)
  os_type : string prop;  (** os_type *)
  priority : string prop option; [@option]  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  restart_policy : string prop option; [@option]
      (** restart_policy *)
  sku : string prop option; [@option]  (** sku *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
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
    ?dns_name_label_reuse_policy ?exposed_port ?id ?ip_address_type
    ?key_vault_key_id ?key_vault_user_assigned_identity_id
    ?network_profile_id ?priority ?restart_policy ?sku ?subnet_ids
    ?tags ?zones ?timeouts ~location ~name ~os_type
    ~resource_group_name ~container ~diagnostics ~dns_config
    ~identity ~image_registry_credential ~init_container
    __resource_id =
  let __resource_type = "azurerm_container_group" in
  let __resource =
    {
      dns_name_label;
      dns_name_label_reuse_policy;
      exposed_port;
      id;
      ip_address_type;
      key_vault_key_id;
      key_vault_user_assigned_identity_id;
      location;
      name;
      network_profile_id;
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
