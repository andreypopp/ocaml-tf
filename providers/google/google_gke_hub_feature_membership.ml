(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configmanagement__binauthz = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__binauthz) -> ()

let yojson_of_configmanagement__binauthz =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__binauthz -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__binauthz

[@@@deriving.end]

type configmanagement__config_sync__git = {
  gcp_service_account_email : string prop option; [@option]
  https_proxy : string prop option; [@option]
  policy_dir : string prop option; [@option]
  secret_type : string prop option; [@option]
  sync_branch : string prop option; [@option]
  sync_repo : string prop option; [@option]
  sync_rev : string prop option; [@option]
  sync_wait_secs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__config_sync__git) -> ()

let yojson_of_configmanagement__config_sync__git =
  (function
   | {
       gcp_service_account_email = v_gcp_service_account_email;
       https_proxy = v_https_proxy;
       policy_dir = v_policy_dir;
       secret_type = v_secret_type;
       sync_branch = v_sync_branch;
       sync_repo = v_sync_repo;
       sync_rev = v_sync_rev;
       sync_wait_secs = v_sync_wait_secs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sync_wait_secs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_wait_secs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_rev with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_rev", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_branch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_proxy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "https_proxy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gcp_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gcp_service_account_email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__config_sync__git ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__config_sync__git

[@@@deriving.end]

type configmanagement__config_sync__oci = {
  gcp_service_account_email : string prop option; [@option]
  policy_dir : string prop option; [@option]
  secret_type : string prop option; [@option]
  sync_repo : string prop option; [@option]
  sync_wait_secs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__config_sync__oci) -> ()

let yojson_of_configmanagement__config_sync__oci =
  (function
   | {
       gcp_service_account_email = v_gcp_service_account_email;
       policy_dir = v_policy_dir;
       secret_type = v_secret_type;
       sync_repo = v_sync_repo;
       sync_wait_secs = v_sync_wait_secs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sync_wait_secs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_wait_secs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sync_repo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sync_repo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_dir with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_dir", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gcp_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gcp_service_account_email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__config_sync__oci ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__config_sync__oci

[@@@deriving.end]

type configmanagement__config_sync = {
  metrics_gcp_service_account_email : string prop option; [@option]
  prevent_drift : bool prop option; [@option]
  source_format : string prop option; [@option]
  git : configmanagement__config_sync__git list;
      [@default []] [@yojson_drop_default ( = )]
  oci : configmanagement__config_sync__oci list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__config_sync) -> ()

let yojson_of_configmanagement__config_sync =
  (function
   | {
       metrics_gcp_service_account_email =
         v_metrics_gcp_service_account_email;
       prevent_drift = v_prevent_drift;
       source_format = v_source_format;
       git = v_git;
       oci = v_oci;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_oci then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configmanagement__config_sync__oci)
               v_oci
           in
           let bnd = "oci", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_git then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configmanagement__config_sync__git)
               v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prevent_drift with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prevent_drift", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metrics_gcp_service_account_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metrics_gcp_service_account_email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__config_sync ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__config_sync

[@@@deriving.end]

type configmanagement__hierarchy_controller = {
  enable_hierarchical_resource_quota : bool prop option; [@option]
  enable_pod_tree_labels : bool prop option; [@option]
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__hierarchy_controller) -> ()

let yojson_of_configmanagement__hierarchy_controller =
  (function
   | {
       enable_hierarchical_resource_quota =
         v_enable_hierarchical_resource_quota;
       enable_pod_tree_labels = v_enable_pod_tree_labels;
       enabled = v_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_pod_tree_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pod_tree_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_hierarchical_resource_quota with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_hierarchical_resource_quota", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__hierarchy_controller ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__hierarchy_controller

[@@@deriving.end]

type configmanagement__policy_controller__monitoring = {
  backends : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configmanagement__policy_controller__monitoring) -> ()

let yojson_of_configmanagement__policy_controller__monitoring =
  (function
   | { backends = v_backends } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_backends with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backends", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__policy_controller__monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__policy_controller__monitoring

[@@@deriving.end]

type configmanagement__policy_controller = {
  audit_interval_seconds : string prop option; [@option]
  enabled : bool prop option; [@option]
  exemptable_namespaces : string prop list option; [@option]
  log_denies_enabled : bool prop option; [@option]
  mutation_enabled : bool prop option; [@option]
  referential_rules_enabled : bool prop option; [@option]
  template_library_installed : bool prop option; [@option]
  monitoring : configmanagement__policy_controller__monitoring list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement__policy_controller) -> ()

let yojson_of_configmanagement__policy_controller =
  (function
   | {
       audit_interval_seconds = v_audit_interval_seconds;
       enabled = v_enabled;
       exemptable_namespaces = v_exemptable_namespaces;
       log_denies_enabled = v_log_denies_enabled;
       mutation_enabled = v_mutation_enabled;
       referential_rules_enabled = v_referential_rules_enabled;
       template_library_installed = v_template_library_installed;
       monitoring = v_monitoring;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_monitoring then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configmanagement__policy_controller__monitoring)
               v_monitoring
           in
           let bnd = "monitoring", arg in
           bnd :: bnds
       in
       let bnds =
         match v_template_library_installed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "template_library_installed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_referential_rules_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "referential_rules_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mutation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mutation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_denies_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_denies_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exemptable_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exemptable_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_interval_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement__policy_controller ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement__policy_controller

[@@@deriving.end]

type configmanagement = {
  version : string prop option; [@option]
  binauthz : configmanagement__binauthz list;
      [@default []] [@yojson_drop_default ( = )]
  config_sync : configmanagement__config_sync list;
      [@default []] [@yojson_drop_default ( = )]
  hierarchy_controller : configmanagement__hierarchy_controller list;
      [@default []] [@yojson_drop_default ( = )]
  policy_controller : configmanagement__policy_controller list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configmanagement) -> ()

let yojson_of_configmanagement =
  (function
   | {
       version = v_version;
       binauthz = v_binauthz;
       config_sync = v_config_sync;
       hierarchy_controller = v_hierarchy_controller;
       policy_controller = v_policy_controller;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy_controller then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configmanagement__policy_controller)
               v_policy_controller
           in
           let bnd = "policy_controller", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hierarchy_controller then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configmanagement__hierarchy_controller)
               v_hierarchy_controller
           in
           let bnd = "hierarchy_controller", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_sync then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configmanagement__config_sync)
               v_config_sync
           in
           let bnd = "config_sync", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_binauthz then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configmanagement__binauthz)
               v_binauthz
           in
           let bnd = "binauthz", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configmanagement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configmanagement

[@@@deriving.end]

type mesh = {
  control_plane : string prop option; [@option]
  management : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mesh) -> ()

let yojson_of_mesh =
  (function
   | { control_plane = v_control_plane; management = v_management }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_management with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "management", arg in
             bnd :: bnds
       in
       let bnds =
         match v_control_plane with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "control_plane", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mesh -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mesh

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    =
  (function
   | { cpu = v_cpu; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    =
  (function
   | { cpu = v_cpu; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
      [@default []] [@yojson_drop_default ( = )]
  requests :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__deployment_configs__container_resources) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_requests then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests)
               v_requests
           in
           let bnd = "requests", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_limits then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits)
               v_limits
           in
           let bnd = "limits", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__deployment_configs__container_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  operator : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    =
  (function
   | {
       effect = v_effect;
       key = v_key;
       operator = v_operator;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__deployment_configs = {
  component_name : string prop;
  pod_affinity : string prop option; [@option]
  replica_count : float prop option; [@option]
  container_resources :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
      [@default []] [@yojson_drop_default ( = )]
  pod_tolerations :
    policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__deployment_configs) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__deployment_configs
    =
  (function
   | {
       component_name = v_component_name;
       pod_affinity = v_pod_affinity;
       replica_count = v_replica_count;
       container_resources = v_container_resources;
       pod_tolerations = v_pod_tolerations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pod_tolerations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations)
               v_pod_tolerations
           in
           let bnd = "pod_tolerations", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_container_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__deployment_configs__container_resources)
               v_container_resources
           in
           let bnd = "container_resources", arg in
           bnd :: bnds
       in
       let bnds =
         match v_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replica_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_component_name
         in
         ("component_name", arg) :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__deployment_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__deployment_configs

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__monitoring = {
  backends : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policycontroller__policy_controller_hub_config__monitoring) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__monitoring
    =
  (function
   | { backends = v_backends } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_backends with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backends", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__monitoring

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle_name : string prop;
  exempted_namespaces : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__policy_content__bundles) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  (function
   | {
       bundle_name = v_bundle_name;
       exempted_namespaces = v_exempted_namespaces;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_exempted_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exempted_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_name in
         ("bundle_name", arg) :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__policy_content__bundles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__policy_content__bundles

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__policy_content__template_library) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__policy_content__template_library
    =
  (function
   | { installation = v_installation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_installation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "installation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__policy_content__template_library ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__policy_content__template_library

[@@@deriving.end]

type policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
      [@default []] [@yojson_drop_default ( = )]
  template_library :
    policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       policycontroller__policy_controller_hub_config__policy_content) ->
  ()

let yojson_of_policycontroller__policy_controller_hub_config__policy_content
    =
  (function
   | { bundles = v_bundles; template_library = v_template_library }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_template_library then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__policy_content__template_library)
               v_template_library
           in
           let bnd = "template_library", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_bundles then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__policy_content__bundles)
               v_bundles
           in
           let bnd = "bundles", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config__policy_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_policycontroller__policy_controller_hub_config__policy_content

[@@@deriving.end]

type policycontroller__policy_controller_hub_config = {
  audit_interval_seconds : float prop option; [@option]
  constraint_violation_limit : float prop option; [@option]
  exemptable_namespaces : string prop list option; [@option]
  install_spec : string prop option; [@option]
  log_denies_enabled : bool prop option; [@option]
  mutation_enabled : bool prop option; [@option]
  referential_rules_enabled : bool prop option; [@option]
  deployment_configs :
    policycontroller__policy_controller_hub_config__deployment_configs
    list;
      [@default []] [@yojson_drop_default ( = )]
  monitoring :
    policycontroller__policy_controller_hub_config__monitoring list;
      [@default []] [@yojson_drop_default ( = )]
  policy_content :
    policycontroller__policy_controller_hub_config__policy_content
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : policycontroller__policy_controller_hub_config) -> ()

let yojson_of_policycontroller__policy_controller_hub_config =
  (function
   | {
       audit_interval_seconds = v_audit_interval_seconds;
       constraint_violation_limit = v_constraint_violation_limit;
       exemptable_namespaces = v_exemptable_namespaces;
       install_spec = v_install_spec;
       log_denies_enabled = v_log_denies_enabled;
       mutation_enabled = v_mutation_enabled;
       referential_rules_enabled = v_referential_rules_enabled;
       deployment_configs = v_deployment_configs;
       monitoring = v_monitoring;
       policy_content = v_policy_content;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy_content then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__policy_content)
               v_policy_content
           in
           let bnd = "policy_content", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_monitoring then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__monitoring)
               v_monitoring
           in
           let bnd = "monitoring", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_deployment_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config__deployment_configs)
               v_deployment_configs
           in
           let bnd = "deployment_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_referential_rules_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "referential_rules_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mutation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mutation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_denies_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_denies_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_install_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "install_spec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exemptable_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exemptable_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_constraint_violation_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "constraint_violation_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "audit_interval_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller__policy_controller_hub_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policycontroller__policy_controller_hub_config

[@@@deriving.end]

type policycontroller = {
  version : string prop option; [@option]
  policy_controller_hub_config :
    policycontroller__policy_controller_hub_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policycontroller) -> ()

let yojson_of_policycontroller =
  (function
   | {
       version = v_version;
       policy_controller_hub_config = v_policy_controller_hub_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy_controller_hub_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_policycontroller__policy_controller_hub_config)
               v_policy_controller_hub_config
           in
           let bnd = "policy_controller_hub_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policycontroller -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policycontroller

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_gke_hub_feature_membership = {
  feature : string prop;
  id : string prop option; [@option]
  location : string prop;
  membership : string prop;
  membership_location : string prop option; [@option]
  project : string prop option; [@option]
  configmanagement : configmanagement list;
      [@default []] [@yojson_drop_default ( = )]
  mesh : mesh list; [@default []] [@yojson_drop_default ( = )]
  policycontroller : policycontroller list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_feature_membership) -> ()

let yojson_of_google_gke_hub_feature_membership =
  (function
   | {
       feature = v_feature;
       id = v_id;
       location = v_location;
       membership = v_membership;
       membership_location = v_membership_location;
       project = v_project;
       configmanagement = v_configmanagement;
       mesh = v_mesh;
       policycontroller = v_policycontroller;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_policycontroller then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policycontroller)
               v_policycontroller
           in
           let bnd = "policycontroller", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_mesh then bnds
         else
           let arg = (yojson_of_list yojson_of_mesh) v_mesh in
           let bnd = "mesh", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_configmanagement then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configmanagement)
               v_configmanagement
           in
           let bnd = "configmanagement", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_membership_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "membership_location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_membership in
         ("membership", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_feature in
         ("feature", arg) :: bnds
       in
       `Assoc bnds
    : google_gke_hub_feature_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_feature_membership

[@@@deriving.end]

let configmanagement__binauthz ?enabled () :
    configmanagement__binauthz =
  { enabled }

let configmanagement__config_sync__git ?gcp_service_account_email
    ?https_proxy ?policy_dir ?secret_type ?sync_branch ?sync_repo
    ?sync_rev ?sync_wait_secs () : configmanagement__config_sync__git
    =
  {
    gcp_service_account_email;
    https_proxy;
    policy_dir;
    secret_type;
    sync_branch;
    sync_repo;
    sync_rev;
    sync_wait_secs;
  }

let configmanagement__config_sync__oci ?gcp_service_account_email
    ?policy_dir ?secret_type ?sync_repo ?sync_wait_secs () :
    configmanagement__config_sync__oci =
  {
    gcp_service_account_email;
    policy_dir;
    secret_type;
    sync_repo;
    sync_wait_secs;
  }

let configmanagement__config_sync ?metrics_gcp_service_account_email
    ?prevent_drift ?source_format ?(git = []) ?(oci = []) () :
    configmanagement__config_sync =
  {
    metrics_gcp_service_account_email;
    prevent_drift;
    source_format;
    git;
    oci;
  }

let configmanagement__hierarchy_controller
    ?enable_hierarchical_resource_quota ?enable_pod_tree_labels
    ?enabled () : configmanagement__hierarchy_controller =
  {
    enable_hierarchical_resource_quota;
    enable_pod_tree_labels;
    enabled;
  }

let configmanagement__policy_controller__monitoring ?backends () :
    configmanagement__policy_controller__monitoring =
  { backends }

let configmanagement__policy_controller ?audit_interval_seconds
    ?enabled ?exemptable_namespaces ?log_denies_enabled
    ?mutation_enabled ?referential_rules_enabled
    ?template_library_installed ?(monitoring = []) () :
    configmanagement__policy_controller =
  {
    audit_interval_seconds;
    enabled;
    exemptable_namespaces;
    log_denies_enabled;
    mutation_enabled;
    referential_rules_enabled;
    template_library_installed;
    monitoring;
  }

let configmanagement ?version ?(binauthz = []) ?(config_sync = [])
    ?(hierarchy_controller = []) ?(policy_controller = []) () :
    configmanagement =
  {
    version;
    binauthz;
    config_sync;
    hierarchy_controller;
    policy_controller;
  }

let mesh ?control_plane ?management () : mesh =
  { control_plane; management }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    ?cpu ?memory () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    =
  { cpu; memory }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    ?cpu ?memory () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    =
  { cpu; memory }

let policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    ?(limits = []) ?(requests = []) () :
    policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  { limits; requests }

let policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    ?effect ?key ?operator ?value () :
    policycontroller__policy_controller_hub_config__deployment_configs__pod_tolerations
    =
  { effect; key; operator; value }

let policycontroller__policy_controller_hub_config__deployment_configs
    ?pod_affinity ?replica_count ?(container_resources = [])
    ?(pod_tolerations = []) ~component_name () :
    policycontroller__policy_controller_hub_config__deployment_configs
    =
  {
    component_name;
    pod_affinity;
    replica_count;
    container_resources;
    pod_tolerations;
  }

let policycontroller__policy_controller_hub_config__monitoring
    ?backends () :
    policycontroller__policy_controller_hub_config__monitoring =
  { backends }

let policycontroller__policy_controller_hub_config__policy_content__bundles
    ?exempted_namespaces ~bundle_name () :
    policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  { bundle_name; exempted_namespaces }

let policycontroller__policy_controller_hub_config__policy_content__template_library
    ?installation () :
    policycontroller__policy_controller_hub_config__policy_content__template_library
    =
  { installation }

let policycontroller__policy_controller_hub_config__policy_content
    ?(template_library = []) ~bundles () :
    policycontroller__policy_controller_hub_config__policy_content =
  { bundles; template_library }

let policycontroller__policy_controller_hub_config
    ?audit_interval_seconds ?constraint_violation_limit
    ?exemptable_namespaces ?install_spec ?log_denies_enabled
    ?mutation_enabled ?referential_rules_enabled ?(monitoring = [])
    ?(policy_content = []) ~deployment_configs () :
    policycontroller__policy_controller_hub_config =
  {
    audit_interval_seconds;
    constraint_violation_limit;
    exemptable_namespaces;
    install_spec;
    log_denies_enabled;
    mutation_enabled;
    referential_rules_enabled;
    deployment_configs;
    monitoring;
    policy_content;
  }

let policycontroller ?version ~policy_controller_hub_config () :
    policycontroller =
  { version; policy_controller_hub_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_feature_membership ?id ?membership_location
    ?project ?(configmanagement = []) ?(mesh = [])
    ?(policycontroller = []) ?timeouts ~feature ~location ~membership
    () : google_gke_hub_feature_membership =
  {
    feature;
    id;
    location;
    membership;
    membership_location;
    project;
    configmanagement;
    mesh;
    policycontroller;
    timeouts;
  }

type t = {
  tf_name : string;
  feature : string prop;
  id : string prop;
  location : string prop;
  membership : string prop;
  membership_location : string prop;
  project : string prop;
}

let make ?id ?membership_location ?project ?(configmanagement = [])
    ?(mesh = []) ?(policycontroller = []) ?timeouts ~feature
    ~location ~membership __id =
  let __type = "google_gke_hub_feature_membership" in
  let __attrs =
    ({
       tf_name = __id;
       feature = Prop.computed __type __id "feature";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       membership = Prop.computed __type __id "membership";
       membership_location =
         Prop.computed __type __id "membership_location";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_feature_membership
        (google_gke_hub_feature_membership ?id ?membership_location
           ?project ~configmanagement ~mesh ~policycontroller
           ?timeouts ~feature ~location ~membership ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?membership_location ?project
    ?(configmanagement = []) ?(mesh = []) ?(policycontroller = [])
    ?timeouts ~feature ~location ~membership __id =
  let (r : _ Tf_core.resource) =
    make ?id ?membership_location ?project ~configmanagement ~mesh
      ~policycontroller ?timeouts ~feature ~location ~membership __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
