(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type build_config = {
  build_caching : bool prop option; [@option]
      (** Enable build caching for the project. *)
  build_command : string prop option; [@option]
      (** Command used to build project. *)
  destination_dir : string prop option; [@option]
      (** Output directory of the build. *)
  root_dir : string prop option; [@option]
      (** Your project's root directory, where Cloudflare runs the build command. If your site is not in a subdirectory, leave this path value empty. *)
  web_analytics_tag : string prop option; [@option]
      (** The classifying tag for analytics. *)
  web_analytics_token : string prop option; [@option]
      (** The auth token for analytics. *)
}
[@@deriving yojson_of]
(** Configuration for the project build process. Read more about the build configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/build-configuration). *)

type deployment_configs__preview__placement = {
  mode : string prop option; [@option]
      (** Placement Mode for the Pages Function. *)
}
[@@deriving yojson_of]
(** Configuration for placement in the Cloudflare Pages project. *)

type deployment_configs__preview__service_binding = {
  environment : string prop option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  service : string prop;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** Services used for Pages Functions. *)

type deployment_configs__preview = {
  always_use_latest_compatibility_date : bool prop option; [@option]
      (** Use latest compatibility date for Pages Functions. Defaults to `false`. *)
  compatibility_date : string prop option; [@option]
      (** Compatibility date used for Pages Functions. *)
  compatibility_flags : string prop list option; [@option]
      (** Compatibility flags used for Pages Functions. *)
  d1_databases : (string * string prop) list option; [@option]
      (** D1 Databases used for Pages Functions. Defaults to `map[]`. *)
  durable_object_namespaces : (string * string prop) list option;
      [@option]
      (** Durable Object namespaces used for Pages Functions. Defaults to `map[]`. *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** Environment variables for Pages Functions. Defaults to `map[]`. *)
  fail_open : bool prop option; [@option]
      (** Fail open used for Pages Functions. Defaults to `false`. *)
  kv_namespaces : (string * string prop) list option; [@option]
      (** KV namespaces used for Pages Functions. Defaults to `map[]`. *)
  r2_buckets : (string * string prop) list option; [@option]
      (** R2 Buckets used for Pages Functions. Defaults to `map[]`. *)
  secrets : (string * string prop) list option; [@option]
      (** Encrypted environment variables for Pages Functions. Defaults to `map[]`. *)
  usage_model : string prop option; [@option]
      (** Usage model used for Pages Functions. Available values: `unbound`, `bundled`, `standard`. Defaults to `bundled`. *)
  placement : deployment_configs__preview__placement list;
  service_binding : deployment_configs__preview__service_binding list;
}
[@@deriving yojson_of]
(** Configuration for preview deploys. *)

type deployment_configs__production__placement = {
  mode : string prop option; [@option]
      (** Placement Mode for the Pages Function. *)
}
[@@deriving yojson_of]
(** Configuration for placement in the Cloudflare Pages project. *)

type deployment_configs__production__service_binding = {
  environment : string prop option; [@option]
      (** The name of the Worker environment to bind to. *)
  name : string prop;
      (** The global variable for the binding in your Worker code. *)
  service : string prop;  (** The name of the Worker to bind to. *)
}
[@@deriving yojson_of]
(** Services used for Pages Functions. *)

type deployment_configs__production = {
  always_use_latest_compatibility_date : bool prop option; [@option]
      (** Use latest compatibility date for Pages Functions. Defaults to `false`. *)
  compatibility_date : string prop option; [@option]
      (** Compatibility date used for Pages Functions. *)
  compatibility_flags : string prop list option; [@option]
      (** Compatibility flags used for Pages Functions. *)
  d1_databases : (string * string prop) list option; [@option]
      (** D1 Databases used for Pages Functions. Defaults to `map[]`. *)
  durable_object_namespaces : (string * string prop) list option;
      [@option]
      (** Durable Object namespaces used for Pages Functions. Defaults to `map[]`. *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** Environment variables for Pages Functions. Defaults to `map[]`. *)
  fail_open : bool prop option; [@option]
      (** Fail open used for Pages Functions. Defaults to `false`. *)
  kv_namespaces : (string * string prop) list option; [@option]
      (** KV namespaces used for Pages Functions. Defaults to `map[]`. *)
  r2_buckets : (string * string prop) list option; [@option]
      (** R2 Buckets used for Pages Functions. Defaults to `map[]`. *)
  secrets : (string * string prop) list option; [@option]
      (** Encrypted environment variables for Pages Functions. Defaults to `map[]`. *)
  usage_model : string prop option; [@option]
      (** Usage model used for Pages Functions. Available values: `unbound`, `bundled`, `standard`. Defaults to `bundled`. *)
  placement : deployment_configs__production__placement list;
  service_binding :
    deployment_configs__production__service_binding list;
}
[@@deriving yojson_of]
(** Configuration for production deploys. *)

type deployment_configs = {
  preview : deployment_configs__preview list;
  production : deployment_configs__production list;
}
[@@deriving yojson_of]
(** Configuration for deployments in a project. *)

type source__config = {
  deployments_enabled : bool prop option; [@option]
      (** Toggle deployments on this repo. Defaults to `true`. *)
  owner : string prop option; [@option]
      (** Project owner username. **Modifying this attribute will force creation of a new resource.** *)
  pr_comments_enabled : bool prop option; [@option]
      (** Enable Pages to comment on Pull Requests. Defaults to `true`. *)
  preview_branch_excludes : string prop list option; [@option]
      (** Branches will be excluded from automatic deployment. *)
  preview_branch_includes : string prop list option; [@option]
      (** Branches will be included for automatic deployment. *)
  preview_deployment_setting : string prop option; [@option]
      (** Preview Deployment Setting. Available values: `custom`, `all`, `none`. Defaults to `all`. *)
  production_branch : string prop;
      (** Project production branch name. *)
  production_deployment_enabled : bool prop option; [@option]
      (** Enable production deployments. Defaults to `true`. *)
  repo_name : string prop option; [@option]
      (** Project repository name. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Configuration for the source of the Cloudflare Pages project. *)

type source = {
  type_ : string prop option; [@option] [@key "type"]
      (** Project host type. *)
  config : source__config list;
}
[@@deriving yojson_of]
(** Configuration for the project source. Read more about the source configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/branch-build-controls/). *)

type cloudflare_pages_project = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the project. *)
  production_branch : string prop;
      (** The name of the branch that is used for the production environment. *)
  build_config : build_config list;
  deployment_configs : deployment_configs list;
  source : source list;
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare Pages projects.
 *)

let build_config ?build_caching ?build_command ?destination_dir
    ?root_dir ?web_analytics_tag ?web_analytics_token () :
    build_config =
  {
    build_caching;
    build_command;
    destination_dir;
    root_dir;
    web_analytics_tag;
    web_analytics_token;
  }

let deployment_configs__preview__placement ?mode () :
    deployment_configs__preview__placement =
  { mode }

let deployment_configs__preview__service_binding ?environment ~name
    ~service () : deployment_configs__preview__service_binding =
  { environment; name; service }

let deployment_configs__preview ?always_use_latest_compatibility_date
    ?compatibility_date ?compatibility_flags ?d1_databases
    ?durable_object_namespaces ?environment_variables ?fail_open
    ?kv_namespaces ?r2_buckets ?secrets ?usage_model ~placement
    ~service_binding () : deployment_configs__preview =
  {
    always_use_latest_compatibility_date;
    compatibility_date;
    compatibility_flags;
    d1_databases;
    durable_object_namespaces;
    environment_variables;
    fail_open;
    kv_namespaces;
    r2_buckets;
    secrets;
    usage_model;
    placement;
    service_binding;
  }

let deployment_configs__production__placement ?mode () :
    deployment_configs__production__placement =
  { mode }

let deployment_configs__production__service_binding ?environment
    ~name ~service () :
    deployment_configs__production__service_binding =
  { environment; name; service }

let deployment_configs__production
    ?always_use_latest_compatibility_date ?compatibility_date
    ?compatibility_flags ?d1_databases ?durable_object_namespaces
    ?environment_variables ?fail_open ?kv_namespaces ?r2_buckets
    ?secrets ?usage_model ~placement ~service_binding () :
    deployment_configs__production =
  {
    always_use_latest_compatibility_date;
    compatibility_date;
    compatibility_flags;
    d1_databases;
    durable_object_namespaces;
    environment_variables;
    fail_open;
    kv_namespaces;
    r2_buckets;
    secrets;
    usage_model;
    placement;
    service_binding;
  }

let deployment_configs ~preview ~production () : deployment_configs =
  { preview; production }

let source__config ?deployments_enabled ?owner ?pr_comments_enabled
    ?preview_branch_excludes ?preview_branch_includes
    ?preview_deployment_setting ?production_deployment_enabled
    ?repo_name ~production_branch () : source__config =
  {
    deployments_enabled;
    owner;
    pr_comments_enabled;
    preview_branch_excludes;
    preview_branch_includes;
    preview_deployment_setting;
    production_branch;
    production_deployment_enabled;
    repo_name;
  }

let source ?type_ ~config () : source = { type_; config }

let cloudflare_pages_project ?id ~account_id ~name ~production_branch
    ~build_config ~deployment_configs ~source () :
    cloudflare_pages_project =
  {
    account_id;
    id;
    name;
    production_branch;
    build_config;
    deployment_configs;
    source;
  }

type t = {
  account_id : string prop;
  created_on : string prop;
  domains : string list prop;
  id : string prop;
  name : string prop;
  production_branch : string prop;
  subdomain : string prop;
}

let register ?tf_module ?id ~account_id ~name ~production_branch
    ~build_config ~deployment_configs ~source __resource_id =
  let __resource_type = "cloudflare_pages_project" in
  let __resource =
    cloudflare_pages_project ?id ~account_id ~name ~production_branch
      ~build_config ~deployment_configs ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_pages_project __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       domains =
         Prop.computed __resource_type __resource_id "domains";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       production_branch =
         Prop.computed __resource_type __resource_id
           "production_branch";
       subdomain =
         Prop.computed __resource_type __resource_id "subdomain";
     }
      : t)
  in
  __resource_attributes
