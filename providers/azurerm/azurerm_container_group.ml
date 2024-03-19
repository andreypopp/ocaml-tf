(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type container__gpu = {
  count : float prop option; [@option]  (** count *)
  sku : string prop option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** container__gpu *)

type container__gpu_limit = {
  count : float prop option; [@option]  (** count *)
  sku : string prop option; [@option]  (** sku *)
}
[@@deriving yojson_of]
(** container__gpu_limit *)

type container__liveness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
      (** http_headers *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** container__liveness_probe__http_get *)

type container__liveness_probe = {
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
  http_get : container__liveness_probe__http_get list;
}
[@@deriving yojson_of]
(** container__liveness_probe *)

type container__ports = {
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** container__ports *)

type container__readiness_probe__http_get = {
  http_headers : (string * string prop) list option; [@option]
      (** http_headers *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  scheme : string prop option; [@option]  (** scheme *)
}
[@@deriving yojson_of]
(** container__readiness_probe__http_get *)

type container__readiness_probe = {
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
  http_get : container__readiness_probe__http_get list;
}
[@@deriving yojson_of]
(** container__readiness_probe *)

type container__security = {
  privilege_enabled : bool prop;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** container__security *)

type container__volume__git_repo = {
  directory : string prop option; [@option]  (** directory *)
  revision : string prop option; [@option]  (** revision *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** container__volume__git_repo *)

type container__volume = {
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
  git_repo : container__volume__git_repo list;
}
[@@deriving yojson_of]
(** container__volume *)

type container = {
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
  gpu : container__gpu list;
  gpu_limit : container__gpu_limit list;
  liveness_probe : container__liveness_probe list;
  ports : container__ports list;
  readiness_probe : container__readiness_probe list;
  security : container__security list;
  volume : container__volume list;
}
[@@deriving yojson_of]
(** container *)

type diagnostics__log_analytics = {
  log_type : string prop option; [@option]  (** log_type *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  workspace_id : string prop;  (** workspace_id *)
  workspace_key : string prop;  (** workspace_key *)
}
[@@deriving yojson_of]
(** diagnostics__log_analytics *)

type diagnostics = {
  log_analytics : diagnostics__log_analytics list;
}
[@@deriving yojson_of]
(** diagnostics *)

type dns_config = {
  nameservers : string prop list;  (** nameservers *)
  options : string prop list option; [@option]  (** options *)
  search_domains : string prop list option; [@option]
      (** search_domains *)
}
[@@deriving yojson_of]
(** dns_config *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type image_registry_credential = {
  password : string prop option; [@option]  (** password *)
  server : string prop;  (** server *)
  user_assigned_identity_id : string prop option; [@option]
      (** The User Assigned Identity to use for Container Registry access. *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** image_registry_credential *)

type init_container__security = {
  privilege_enabled : bool prop;  (** privilege_enabled *)
}
[@@deriving yojson_of]
(** init_container__security *)

type init_container__volume__git_repo = {
  directory : string prop option; [@option]  (** directory *)
  revision : string prop option; [@option]  (** revision *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** init_container__volume__git_repo *)

type init_container__volume = {
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
  git_repo : init_container__volume__git_repo list;
}
[@@deriving yojson_of]
(** init_container__volume *)

type init_container = {
  commands : string prop list option; [@option]  (** commands *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  secure_environment_variables : (string * string prop) list option;
      [@option]
      (** secure_environment_variables *)
  security : init_container__security list;
  volume : init_container__volume list;
}
[@@deriving yojson_of]
(** init_container *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type exposed_port = {
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type azurerm_container_group = {
  dns_name_label : string prop option; [@option]
      (** dns_name_label *)
  dns_name_label_reuse_policy : string prop option; [@option]
      (** dns_name_label_reuse_policy *)
  exposed_port : exposed_port list option; [@option]
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
  container : container list;
  diagnostics : diagnostics list;
  dns_config : dns_config list;
  identity : identity list;
  image_registry_credential : image_registry_credential list;
  init_container : init_container list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_group *)

let container__gpu ?count ?sku () : container__gpu = { count; sku }

let container__gpu_limit ?count ?sku () : container__gpu_limit =
  { count; sku }

let container__liveness_probe__http_get ?http_headers ?path ?port
    ?scheme () : container__liveness_probe__http_get =
  { http_headers; path; port; scheme }

let container__liveness_probe ?exec ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?success_threshold
    ?timeout_seconds ~http_get () : container__liveness_probe =
  {
    exec;
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    http_get;
  }

let container__ports ?port ?protocol () : container__ports =
  { port; protocol }

let container__readiness_probe__http_get ?http_headers ?path ?port
    ?scheme () : container__readiness_probe__http_get =
  { http_headers; path; port; scheme }

let container__readiness_probe ?exec ?failure_threshold
    ?initial_delay_seconds ?period_seconds ?success_threshold
    ?timeout_seconds ~http_get () : container__readiness_probe =
  {
    exec;
    failure_threshold;
    initial_delay_seconds;
    period_seconds;
    success_threshold;
    timeout_seconds;
    http_get;
  }

let container__security ~privilege_enabled () : container__security =
  { privilege_enabled }

let container__volume__git_repo ?directory ?revision ~url () :
    container__volume__git_repo =
  { directory; revision; url }

let container__volume ?empty_dir ?read_only ?secret ?share_name
    ?storage_account_key ?storage_account_name ~mount_path ~name
    ~git_repo () : container__volume =
  {
    empty_dir;
    mount_path;
    name;
    read_only;
    secret;
    share_name;
    storage_account_key;
    storage_account_name;
    git_repo;
  }

let container ?commands ?cpu_limit ?environment_variables
    ?memory_limit ?secure_environment_variables ~cpu ~image ~memory
    ~name ~gpu ~gpu_limit ~liveness_probe ~ports ~readiness_probe
    ~security ~volume () : container =
  {
    commands;
    cpu;
    cpu_limit;
    environment_variables;
    image;
    memory;
    memory_limit;
    name;
    secure_environment_variables;
    gpu;
    gpu_limit;
    liveness_probe;
    ports;
    readiness_probe;
    security;
    volume;
  }

let diagnostics__log_analytics ?log_type ?metadata ~workspace_id
    ~workspace_key () : diagnostics__log_analytics =
  { log_type; metadata; workspace_id; workspace_key }

let diagnostics ~log_analytics () : diagnostics = { log_analytics }

let dns_config ?options ?search_domains ~nameservers () : dns_config
    =
  { nameservers; options; search_domains }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let image_registry_credential ?password ?user_assigned_identity_id
    ?username ~server () : image_registry_credential =
  { password; server; user_assigned_identity_id; username }

let init_container__security ~privilege_enabled () :
    init_container__security =
  { privilege_enabled }

let init_container__volume__git_repo ?directory ?revision ~url () :
    init_container__volume__git_repo =
  { directory; revision; url }

let init_container__volume ?empty_dir ?read_only ?secret ?share_name
    ?storage_account_key ?storage_account_name ~mount_path ~name
    ~git_repo () : init_container__volume =
  {
    empty_dir;
    mount_path;
    name;
    read_only;
    secret;
    share_name;
    storage_account_key;
    storage_account_name;
    git_repo;
  }

let init_container ?commands ?environment_variables
    ?secure_environment_variables ~image ~name ~security ~volume () :
    init_container =
  {
    commands;
    environment_variables;
    image;
    name;
    secure_environment_variables;
    security;
    volume;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_group ?dns_name_label
    ?dns_name_label_reuse_policy ?exposed_port ?id ?ip_address_type
    ?key_vault_key_id ?key_vault_user_assigned_identity_id
    ?network_profile_id ?priority ?restart_policy ?sku ?subnet_ids
    ?tags ?zones ?timeouts ~location ~name ~os_type
    ~resource_group_name ~container ~diagnostics ~dns_config
    ~identity ~image_registry_credential ~init_container () :
    azurerm_container_group =
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

type t = {
  dns_name_label : string prop;
  dns_name_label_reuse_policy : string prop;
  exposed_port : exposed_port list prop;
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  ip_address_type : string prop;
  key_vault_key_id : string prop;
  key_vault_user_assigned_identity_id : string prop;
  location : string prop;
  name : string prop;
  network_profile_id : string prop;
  os_type : string prop;
  priority : string prop;
  resource_group_name : string prop;
  restart_policy : string prop;
  sku : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let register ?tf_module ?dns_name_label ?dns_name_label_reuse_policy
    ?exposed_port ?id ?ip_address_type ?key_vault_key_id
    ?key_vault_user_assigned_identity_id ?network_profile_id
    ?priority ?restart_policy ?sku ?subnet_ids ?tags ?zones ?timeouts
    ~location ~name ~os_type ~resource_group_name ~container
    ~diagnostics ~dns_config ~identity ~image_registry_credential
    ~init_container __resource_id =
  let __resource_type = "azurerm_container_group" in
  let __resource =
    azurerm_container_group ?dns_name_label
      ?dns_name_label_reuse_policy ?exposed_port ?id ?ip_address_type
      ?key_vault_key_id ?key_vault_user_assigned_identity_id
      ?network_profile_id ?priority ?restart_policy ?sku ?subnet_ids
      ?tags ?zones ?timeouts ~location ~name ~os_type
      ~resource_group_name ~container ~diagnostics ~dns_config
      ~identity ~image_registry_credential ~init_container ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_group __resource);
  let __resource_attributes =
    ({
       dns_name_label =
         Prop.computed __resource_type __resource_id "dns_name_label";
       dns_name_label_reuse_policy =
         Prop.computed __resource_type __resource_id
           "dns_name_label_reuse_policy";
       exposed_port =
         Prop.computed __resource_type __resource_id "exposed_port";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       key_vault_user_assigned_identity_id =
         Prop.computed __resource_type __resource_id
           "key_vault_user_assigned_identity_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network_profile_id =
         Prop.computed __resource_type __resource_id
           "network_profile_id";
       os_type =
         Prop.computed __resource_type __resource_id "os_type";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       restart_policy =
         Prop.computed __resource_type __resource_id "restart_policy";
       sku = Prop.computed __resource_type __resource_id "sku";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
