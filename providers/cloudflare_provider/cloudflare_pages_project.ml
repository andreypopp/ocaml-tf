(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_pages_project__build_config = {
  build_caching : bool option; [@option]
      (** Enable build caching for the project. *)
  build_command : string option; [@option]
      (** Command used to build project. *)
  destination_dir : string option; [@option]
      (** Output directory of the build. *)
  root_dir : string option; [@option]
      (** Your project's root directory, where Cloudflare runs the build command. If your site is not in a subdirectory, leave this path value empty. *)
  web_analytics_tag : string option; [@option]
      (** The classifying tag for analytics. *)
  web_analytics_token : string option; [@option]
      (** The auth token for analytics. *)
}
[@@deriving yojson_of]
(** Configuration for the project build process. Read more about the build configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/build-configuration). *)

type cloudflare_pages_project__deployment_configs__preview__placement = {
  mode : string option; [@option]
      (** Placement Mode for the Pages Function. *)
}
[@@deriving yojson_of]
(** Configuration for placement in the Cloudflare Pages project. *)

type cloudflare_pages_project__deployment_configs__preview__service_binding = {
  environment : string option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
  service : string;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** Services used for Pages Functions. *)

type cloudflare_pages_project__deployment_configs__preview = {
  always_use_latest_compatibility_date : bool option; [@option]
      (** Use latest compatibility date for Pages Functions. Defaults to `false`. *)
  compatibility_date : string option; [@option]
      (** Compatibility date used for Pages Functions. *)
  compatibility_flags : string list option; [@option]
      (** Compatibility flags used for Pages Functions. *)
  d1_databases : (string * string) list option; [@option]
      (** D1 Databases used for Pages Functions. Defaults to `map[]`. *)
  durable_object_namespaces : (string * string) list option;
      [@option]
      (** Durable Object namespaces used for Pages Functions. Defaults to `map[]`. *)
  environment_variables : (string * string) list option; [@option]
      (** Environment variables for Pages Functions. Defaults to `map[]`. *)
  fail_open : bool option; [@option]
      (** Fail open used for Pages Functions. Defaults to `false`. *)
  kv_namespaces : (string * string) list option; [@option]
      (** KV namespaces used for Pages Functions. Defaults to `map[]`. *)
  r2_buckets : (string * string) list option; [@option]
      (** R2 Buckets used for Pages Functions. Defaults to `map[]`. *)
  secrets : (string * string) list option; [@option]
      (** Encrypted environment variables for Pages Functions. Defaults to `map[]`. *)
  usage_model : string option; [@option]
      (** Usage model used for Pages Functions. Available values: `unbound`, `bundled`, `standard`. Defaults to `bundled`. *)
  placement :
    cloudflare_pages_project__deployment_configs__preview__placement
    list;
  service_binding :
    cloudflare_pages_project__deployment_configs__preview__service_binding
    list;
}
[@@deriving yojson_of]
(** Configuration for preview deploys. *)

type cloudflare_pages_project__deployment_configs__production__placement = {
  mode : string option; [@option]
      (** Placement Mode for the Pages Function. *)
}
[@@deriving yojson_of]
(** Configuration for placement in the Cloudflare Pages project. *)

type cloudflare_pages_project__deployment_configs__production__service_binding = {
  environment : string option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string;
      (** The global variable for the binding in your Worker code. *)
  service : string;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** Services used for Pages Functions. *)

type cloudflare_pages_project__deployment_configs__production = {
  always_use_latest_compatibility_date : bool option; [@option]
      (** Use latest compatibility date for Pages Functions. Defaults to `false`. *)
  compatibility_date : string option; [@option]
      (** Compatibility date used for Pages Functions. *)
  compatibility_flags : string list option; [@option]
      (** Compatibility flags used for Pages Functions. *)
  d1_databases : (string * string) list option; [@option]
      (** D1 Databases used for Pages Functions. Defaults to `map[]`. *)
  durable_object_namespaces : (string * string) list option;
      [@option]
      (** Durable Object namespaces used for Pages Functions. Defaults to `map[]`. *)
  environment_variables : (string * string) list option; [@option]
      (** Environment variables for Pages Functions. Defaults to `map[]`. *)
  fail_open : bool option; [@option]
      (** Fail open used for Pages Functions. Defaults to `false`. *)
  kv_namespaces : (string * string) list option; [@option]
      (** KV namespaces used for Pages Functions. Defaults to `map[]`. *)
  r2_buckets : (string * string) list option; [@option]
      (** R2 Buckets used for Pages Functions. Defaults to `map[]`. *)
  secrets : (string * string) list option; [@option]
      (** Encrypted environment variables for Pages Functions. Defaults to `map[]`. *)
  usage_model : string option; [@option]
      (** Usage model used for Pages Functions. Available values: `unbound`, `bundled`, `standard`. Defaults to `bundled`. *)
  placement :
    cloudflare_pages_project__deployment_configs__production__placement
    list;
  service_binding :
    cloudflare_pages_project__deployment_configs__production__service_binding
    list;
}
[@@deriving yojson_of]
(** Configuration for production deploys. *)

type cloudflare_pages_project__deployment_configs = {
  preview :
    cloudflare_pages_project__deployment_configs__preview list;
  production :
    cloudflare_pages_project__deployment_configs__production list;
}
[@@deriving yojson_of]
(** Configuration for deployments in a project. *)

type cloudflare_pages_project__source__config = {
  deployments_enabled : bool option; [@option]
      (** Toggle deployments on this repo. Defaults to `true`. *)
  owner : string option; [@option]
      (** Project owner username. **Modifying this attribute will force creation of a new resource.** *)
  pr_comments_enabled : bool option; [@option]
      (** Enable Pages to comment on Pull Requests. Defaults to `true`. *)
  preview_branch_excludes : string list option; [@option]
      (** Branches will be excluded from automatic deployment. *)
  preview_branch_includes : string list option; [@option]
      (** Branches will be included for automatic deployment. *)
  preview_deployment_setting : string option; [@option]
      (** Preview Deployment Setting. Available values: `custom`, `all`, `none`. Defaults to `all`. *)
  production_branch : string;  (** Project production branch name. *)
  production_deployment_enabled : bool option; [@option]
      (** Enable production deployments. Defaults to `true`. *)
  repo_name : string option; [@option]
      (** Project repository name. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Configuration for the source of the Cloudflare Pages project. *)

type cloudflare_pages_project__source = {
  type_ : string option; [@option] [@key "type"]
      (** Project host type. *)
  config : cloudflare_pages_project__source__config list;
}
[@@deriving yojson_of]
(** Configuration for the project source. Read more about the source configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/branch-build-controls/). *)

type cloudflare_pages_project = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  name : string;  (** Name of the project. *)
  production_branch : string;
      (** The name of the branch that is used for the production environment. *)
  build_config : cloudflare_pages_project__build_config list;
  deployment_configs :
    cloudflare_pages_project__deployment_configs list;
  source : cloudflare_pages_project__source list;
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare Pages projects.
 *)

let cloudflare_pages_project ~account_id ~name ~production_branch
    ~build_config ~deployment_configs ~source __resource_id =
  let __resource_type = "cloudflare_pages_project" in
  let __resource =
    {
      account_id;
      name;
      production_branch;
      build_config;
      deployment_configs;
      source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_pages_project __resource);
  ()
