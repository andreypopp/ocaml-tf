(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fleet_default_member_config__configmanagement__config_sync__git = {
  gcp_service_account_email : string prop option; [@option]
  https_proxy : string prop option; [@option]
  policy_dir : string prop option; [@option]
  secret_type : string prop;
  sync_branch : string prop option; [@option]
  sync_repo : string prop option; [@option]
  sync_rev : string prop option; [@option]
  sync_wait_secs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__configmanagement__config_sync__git) ->
  ()

let yojson_of_fleet_default_member_config__configmanagement__config_sync__git
    =
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
         let arg = yojson_of_prop yojson_of_string v_secret_type in
         ("secret_type", arg) :: bnds
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
    : fleet_default_member_config__configmanagement__config_sync__git ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__configmanagement__config_sync__git

[@@@deriving.end]

type fleet_default_member_config__configmanagement__config_sync__oci = {
  gcp_service_account_email : string prop option; [@option]
  policy_dir : string prop option; [@option]
  secret_type : string prop;
  sync_repo : string prop option; [@option]
  sync_wait_secs : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__configmanagement__config_sync__oci) ->
  ()

let yojson_of_fleet_default_member_config__configmanagement__config_sync__oci
    =
  (function
   | {
       gcp_service_account_email = v_gcp_service_account_email;
       policy_dir = v_policy_dir;
       secret_type = v_secret_type;
       sync_repo = v_sync_repo;
       sync_wait_secs = v_sync_wait_secs;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_secret_type in
         ("secret_type", arg) :: bnds
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
    : fleet_default_member_config__configmanagement__config_sync__oci ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__configmanagement__config_sync__oci

[@@@deriving.end]

type fleet_default_member_config__configmanagement__config_sync = {
  enabled : bool prop option; [@option]
  prevent_drift : bool prop option; [@option]
  source_format : string prop option; [@option]
  git :
    fleet_default_member_config__configmanagement__config_sync__git
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oci :
    fleet_default_member_config__configmanagement__config_sync__oci
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : fleet_default_member_config__configmanagement__config_sync) ->
  ()

let yojson_of_fleet_default_member_config__configmanagement__config_sync
    =
  (function
   | {
       enabled = v_enabled;
       prevent_drift = v_prevent_drift;
       source_format = v_source_format;
       git = v_git;
       oci = v_oci;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oci then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__configmanagement__config_sync__oci)
               v_oci
           in
           let bnd = "oci", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__configmanagement__config_sync__git)
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__configmanagement__config_sync ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__configmanagement__config_sync

[@@@deriving.end]

type fleet_default_member_config__configmanagement = {
  version : string prop option; [@option]
  config_sync :
    fleet_default_member_config__configmanagement__config_sync list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet_default_member_config__configmanagement) -> ()

let yojson_of_fleet_default_member_config__configmanagement =
  (function
   | { version = v_version; config_sync = v_config_sync } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_config_sync then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__configmanagement__config_sync)
               v_config_sync
           in
           let bnd = "config_sync", arg in
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
    : fleet_default_member_config__configmanagement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet_default_member_config__configmanagement

[@@@deriving.end]

type fleet_default_member_config__mesh = { management : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet_default_member_config__mesh) -> ()

let yojson_of_fleet_default_member_config__mesh =
  (function
   | { management = v_management } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_management in
         ("management", arg) :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__mesh ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet_default_member_config__mesh

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests = {
  cpu : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources = {
  limits :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  requests :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  (function
   | { limits = v_limits; requests = v_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_requests then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests)
               v_requests
           in
           let bnd = "requests", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_limits then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits)
               v_limits
           in
           let bnd = "limits", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration = {
  effect : string prop option; [@option]
  key : string prop option; [@option]
  operator : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs = {
  component : string prop;
  pod_affinity : string prop option; [@option]
  replica_count : float prop option; [@option]
  container_resources :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pod_toleration :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    =
  (function
   | {
       component = v_component;
       pod_affinity = v_pod_affinity;
       replica_count = v_replica_count;
       container_resources = v_container_resources;
       pod_toleration = v_pod_toleration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_toleration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration)
               v_pod_toleration
           in
           let bnd = "pod_toleration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_container_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources)
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
         let arg = yojson_of_prop yojson_of_string v_component in
         ("component", arg) :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring = {
  backends : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles = {
  bundle : string prop;
  exempted_namespaces : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  (function
   | {
       bundle = v_bundle;
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
         let arg = yojson_of_prop yojson_of_string v_bundle in
         ("bundle", arg) :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library = {
  installation : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content = {
  bundles :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  template_library :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    =
  (function
   | { bundles = v_bundles; template_library = v_template_library }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_template_library then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library)
               v_template_library
           in
           let bnd = "template_library", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bundles then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles)
               v_bundles
           in
           let bnd = "bundles", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content

[@@@deriving.end]

type fleet_default_member_config__policycontroller__policy_controller_hub_config = {
  audit_interval_seconds : float prop option; [@option]
  constraint_violation_limit : float prop option; [@option]
  exemptable_namespaces : string prop list option; [@option]
  install_spec : string prop;
  log_denies_enabled : bool prop option; [@option]
  mutation_enabled : bool prop option; [@option]
  referential_rules_enabled : bool prop option; [@option]
  deployment_configs :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policy_content :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       fleet_default_member_config__policycontroller__policy_controller_hub_config) ->
  ()

let yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config
    =
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
         if Stdlib.( = ) [] v_policy_content then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content)
               v_policy_content
           in
           let bnd = "policy_content", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitoring then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring)
               v_monitoring
           in
           let bnd = "monitoring", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs)
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
         let arg = yojson_of_prop yojson_of_string v_install_spec in
         ("install_spec", arg) :: bnds
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
    : fleet_default_member_config__policycontroller__policy_controller_hub_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config

[@@@deriving.end]

type fleet_default_member_config__policycontroller = {
  version : string prop option; [@option]
  policy_controller_hub_config :
    fleet_default_member_config__policycontroller__policy_controller_hub_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet_default_member_config__policycontroller) -> ()

let yojson_of_fleet_default_member_config__policycontroller =
  (function
   | {
       version = v_version;
       policy_controller_hub_config = v_policy_controller_hub_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policy_controller_hub_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller__policy_controller_hub_config)
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
    : fleet_default_member_config__policycontroller ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet_default_member_config__policycontroller

[@@@deriving.end]

type fleet_default_member_config = {
  configmanagement :
    fleet_default_member_config__configmanagement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mesh : fleet_default_member_config__mesh list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  policycontroller :
    fleet_default_member_config__policycontroller list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet_default_member_config) -> ()

let yojson_of_fleet_default_member_config =
  (function
   | {
       configmanagement = v_configmanagement;
       mesh = v_mesh;
       policycontroller = v_policycontroller;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_policycontroller then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__policycontroller)
               v_policycontroller
           in
           let bnd = "policycontroller", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mesh then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__mesh)
               v_mesh
           in
           let bnd = "mesh", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configmanagement then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fleet_default_member_config__configmanagement)
               v_configmanagement
           in
           let bnd = "configmanagement", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : fleet_default_member_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet_default_member_config

[@@@deriving.end]

type spec__clusterupgrade__gke_upgrade_overrides__post_conditions = {
  soaking : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__clusterupgrade__gke_upgrade_overrides__post_conditions) ->
  ()

let yojson_of_spec__clusterupgrade__gke_upgrade_overrides__post_conditions
    =
  (function
   | { soaking = v_soaking } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_soaking in
         ("soaking", arg) :: bnds
       in
       `Assoc bnds
    : spec__clusterupgrade__gke_upgrade_overrides__post_conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__clusterupgrade__gke_upgrade_overrides__post_conditions

[@@@deriving.end]

type spec__clusterupgrade__gke_upgrade_overrides__upgrade = {
  name : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__clusterupgrade__gke_upgrade_overrides__upgrade) -> ()

let yojson_of_spec__clusterupgrade__gke_upgrade_overrides__upgrade =
  (function
   | { name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__clusterupgrade__gke_upgrade_overrides__upgrade ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__clusterupgrade__gke_upgrade_overrides__upgrade

[@@@deriving.end]

type spec__clusterupgrade__gke_upgrade_overrides = {
  post_conditions :
    spec__clusterupgrade__gke_upgrade_overrides__post_conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  upgrade : spec__clusterupgrade__gke_upgrade_overrides__upgrade list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__clusterupgrade__gke_upgrade_overrides) -> ()

let yojson_of_spec__clusterupgrade__gke_upgrade_overrides =
  (function
   | { post_conditions = v_post_conditions; upgrade = v_upgrade } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_upgrade then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__clusterupgrade__gke_upgrade_overrides__upgrade)
               v_upgrade
           in
           let bnd = "upgrade", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__clusterupgrade__gke_upgrade_overrides__post_conditions)
               v_post_conditions
           in
           let bnd = "post_conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__clusterupgrade__gke_upgrade_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__clusterupgrade__gke_upgrade_overrides

[@@@deriving.end]

type spec__clusterupgrade__post_conditions = {
  soaking : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__clusterupgrade__post_conditions) -> ()

let yojson_of_spec__clusterupgrade__post_conditions =
  (function
   | { soaking = v_soaking } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_soaking in
         ("soaking", arg) :: bnds
       in
       `Assoc bnds
    : spec__clusterupgrade__post_conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__clusterupgrade__post_conditions

[@@@deriving.end]

type spec__clusterupgrade = {
  upstream_fleets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gke_upgrade_overrides :
    spec__clusterupgrade__gke_upgrade_overrides list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_conditions : spec__clusterupgrade__post_conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__clusterupgrade) -> ()

let yojson_of_spec__clusterupgrade =
  (function
   | {
       upstream_fleets = v_upstream_fleets;
       gke_upgrade_overrides = v_gke_upgrade_overrides;
       post_conditions = v_post_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_post_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__clusterupgrade__post_conditions)
               v_post_conditions
           in
           let bnd = "post_conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gke_upgrade_overrides then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__clusterupgrade__gke_upgrade_overrides)
               v_gke_upgrade_overrides
           in
           let bnd = "gke_upgrade_overrides", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_upstream_fleets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_upstream_fleets
           in
           let bnd = "upstream_fleets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__clusterupgrade -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__clusterupgrade

[@@@deriving.end]

type spec__fleetobservability__logging_config__default_config = {
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__fleetobservability__logging_config__default_config) ->
  ()

let yojson_of_spec__fleetobservability__logging_config__default_config
    =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__fleetobservability__logging_config__default_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__fleetobservability__logging_config__default_config

[@@@deriving.end]

type spec__fleetobservability__logging_config__fleet_scope_logs_config = {
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__fleetobservability__logging_config__fleet_scope_logs_config) ->
  ()

let yojson_of_spec__fleetobservability__logging_config__fleet_scope_logs_config
    =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__fleetobservability__logging_config__fleet_scope_logs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__fleetobservability__logging_config__fleet_scope_logs_config

[@@@deriving.end]

type spec__fleetobservability__logging_config = {
  default_config :
    spec__fleetobservability__logging_config__default_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fleet_scope_logs_config :
    spec__fleetobservability__logging_config__fleet_scope_logs_config
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__fleetobservability__logging_config) -> ()

let yojson_of_spec__fleetobservability__logging_config =
  (function
   | {
       default_config = v_default_config;
       fleet_scope_logs_config = v_fleet_scope_logs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet_scope_logs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__fleetobservability__logging_config__fleet_scope_logs_config)
               v_fleet_scope_logs_config
           in
           let bnd = "fleet_scope_logs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__fleetobservability__logging_config__default_config)
               v_default_config
           in
           let bnd = "default_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__fleetobservability__logging_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__fleetobservability__logging_config

[@@@deriving.end]

type spec__fleetobservability = {
  logging_config : spec__fleetobservability__logging_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__fleetobservability) -> ()

let yojson_of_spec__fleetobservability =
  (function
   | { logging_config = v_logging_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_logging_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__fleetobservability__logging_config)
               v_logging_config
           in
           let bnd = "logging_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__fleetobservability -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__fleetobservability

[@@@deriving.end]

type spec__multiclusteringress = { config_membership : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__multiclusteringress) -> ()

let yojson_of_spec__multiclusteringress =
  (function
   | { config_membership = v_config_membership } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_config_membership
         in
         ("config_membership", arg) :: bnds
       in
       `Assoc bnds
    : spec__multiclusteringress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__multiclusteringress

[@@@deriving.end]

type spec = {
  clusterupgrade : spec__clusterupgrade list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fleetobservability : spec__fleetobservability list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  multiclusteringress : spec__multiclusteringress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       clusterupgrade = v_clusterupgrade;
       fleetobservability = v_fleetobservability;
       multiclusteringress = v_multiclusteringress;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_multiclusteringress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__multiclusteringress)
               v_multiclusteringress
           in
           let bnd = "multiclusteringress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleetobservability then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__fleetobservability)
               v_fleetobservability
           in
           let bnd = "fleetobservability", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_clusterupgrade then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__clusterupgrade)
               v_clusterupgrade
           in
           let bnd = "clusterupgrade", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

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

type resource_state = {
  has_resources : bool prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_state) -> ()

let yojson_of_resource_state =
  (function
   | { has_resources = v_has_resources; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_has_resources in
         ("has_resources", arg) :: bnds
       in
       `Assoc bnds
    : resource_state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_state

[@@@deriving.end]

type state__state = {
  code : string prop;
  description : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : state__state) -> ()

let yojson_of_state__state =
  (function
   | {
       code = v_code;
       description = v_description;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : state__state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state__state

[@@@deriving.end]

type state = {
  state : state__state list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : state) -> ()

let yojson_of_state =
  (function
   | { state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_state then bnds
         else
           let arg =
             (yojson_of_list yojson_of_state__state) v_state
           in
           let bnd = "state", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state

[@@@deriving.end]

type google_gke_hub_feature = {
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop option; [@option]
  project : string prop option; [@option]
  fleet_default_member_config : fleet_default_member_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_feature) -> ()

let yojson_of_google_gke_hub_feature =
  (function
   | {
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       fleet_default_member_config = v_fleet_default_member_config;
       spec = v_spec;
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
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet_default_member_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_fleet_default_member_config)
               v_fleet_default_member_config
           in
           let bnd = "fleet_default_member_config", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_gke_hub_feature -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_feature

[@@@deriving.end]

let fleet_default_member_config__configmanagement__config_sync__git
    ?gcp_service_account_email ?https_proxy ?policy_dir ?sync_branch
    ?sync_repo ?sync_rev ?sync_wait_secs ~secret_type () :
    fleet_default_member_config__configmanagement__config_sync__git =
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

let fleet_default_member_config__configmanagement__config_sync__oci
    ?gcp_service_account_email ?policy_dir ?sync_repo ?sync_wait_secs
    ?version ~secret_type () :
    fleet_default_member_config__configmanagement__config_sync__oci =
  {
    gcp_service_account_email;
    policy_dir;
    secret_type;
    sync_repo;
    sync_wait_secs;
    version;
  }

let fleet_default_member_config__configmanagement__config_sync
    ?enabled ?prevent_drift ?source_format ?(git = []) ?(oci = []) ()
    : fleet_default_member_config__configmanagement__config_sync =
  { enabled; prevent_drift; source_format; git; oci }

let fleet_default_member_config__configmanagement ?version
    ?(config_sync = []) () :
    fleet_default_member_config__configmanagement =
  { version; config_sync }

let fleet_default_member_config__mesh ~management () :
    fleet_default_member_config__mesh =
  { management }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    ?cpu ?memory () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__limits
    =
  { cpu; memory }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    ?cpu ?memory () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources__requests
    =
  { cpu; memory }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    ?(limits = []) ?(requests = []) () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__container_resources
    =
  { limits; requests }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    ?effect ?key ?operator ?value () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs__pod_toleration
    =
  { effect; key; operator; value }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    ?pod_affinity ?replica_count ?(container_resources = [])
    ?(pod_toleration = []) ~component () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__deployment_configs
    =
  {
    component;
    pod_affinity;
    replica_count;
    container_resources;
    pod_toleration;
  }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    ?backends () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__monitoring
    =
  { backends }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    ?exempted_namespaces ~bundle () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__bundles
    =
  { bundle; exempted_namespaces }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    ?installation () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content__template_library
    =
  { installation }

let fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    ?(template_library = []) ~bundles () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config__policy_content
    =
  { bundles; template_library }

let fleet_default_member_config__policycontroller__policy_controller_hub_config
    ?audit_interval_seconds ?constraint_violation_limit
    ?exemptable_namespaces ?log_denies_enabled ?mutation_enabled
    ?referential_rules_enabled ?(monitoring = [])
    ?(policy_content = []) ~install_spec ~deployment_configs () :
    fleet_default_member_config__policycontroller__policy_controller_hub_config
    =
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

let fleet_default_member_config__policycontroller ?version
    ~policy_controller_hub_config () :
    fleet_default_member_config__policycontroller =
  { version; policy_controller_hub_config }

let fleet_default_member_config ?(configmanagement = []) ?(mesh = [])
    ?(policycontroller = []) () : fleet_default_member_config =
  { configmanagement; mesh; policycontroller }

let spec__clusterupgrade__gke_upgrade_overrides__post_conditions
    ~soaking () :
    spec__clusterupgrade__gke_upgrade_overrides__post_conditions =
  { soaking }

let spec__clusterupgrade__gke_upgrade_overrides__upgrade ~name
    ~version () :
    spec__clusterupgrade__gke_upgrade_overrides__upgrade =
  { name; version }

let spec__clusterupgrade__gke_upgrade_overrides ~post_conditions
    ~upgrade () : spec__clusterupgrade__gke_upgrade_overrides =
  { post_conditions; upgrade }

let spec__clusterupgrade__post_conditions ~soaking () :
    spec__clusterupgrade__post_conditions =
  { soaking }

let spec__clusterupgrade ?(gke_upgrade_overrides = [])
    ?(post_conditions = []) ~upstream_fleets () :
    spec__clusterupgrade =
  { upstream_fleets; gke_upgrade_overrides; post_conditions }

let spec__fleetobservability__logging_config__default_config ?mode ()
    : spec__fleetobservability__logging_config__default_config =
  { mode }

let spec__fleetobservability__logging_config__fleet_scope_logs_config
    ?mode () :
    spec__fleetobservability__logging_config__fleet_scope_logs_config
    =
  { mode }

let spec__fleetobservability__logging_config ?(default_config = [])
    ?(fleet_scope_logs_config = []) () :
    spec__fleetobservability__logging_config =
  { default_config; fleet_scope_logs_config }

let spec__fleetobservability ?(logging_config = []) () :
    spec__fleetobservability =
  { logging_config }

let spec__multiclusteringress ~config_membership () :
    spec__multiclusteringress =
  { config_membership }

let spec ?(clusterupgrade = []) ?(fleetobservability = [])
    ?(multiclusteringress = []) () : spec =
  { clusterupgrade; fleetobservability; multiclusteringress }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_feature ?id ?labels ?name ?project
    ?(fleet_default_member_config = []) ?(spec = []) ?timeouts
    ~location () : google_gke_hub_feature =
  {
    id;
    labels;
    location;
    name;
    project;
    fleet_default_member_config;
    spec;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  resource_state : resource_state list prop;
  state : state list prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?id ?labels ?name ?project
    ?(fleet_default_member_config = []) ?(spec = []) ?timeouts
    ~location __id =
  let __type = "google_gke_hub_feature" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       resource_state = Prop.computed __type __id "resource_state";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_feature
        (google_gke_hub_feature ?id ?labels ?name ?project
           ~fleet_default_member_config ~spec ?timeouts ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?name ?project
    ?(fleet_default_member_config = []) ?(spec = []) ?timeouts
    ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?name ?project ~fleet_default_member_config
      ~spec ?timeouts ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
