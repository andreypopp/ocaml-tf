(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type artifact_store__encryption_key = {
  id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : artifact_store__encryption_key) -> ()

let yojson_of_artifact_store__encryption_key =
  (function
   | { id = v_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : artifact_store__encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_artifact_store__encryption_key

[@@@deriving.end]

type artifact_store = {
  location : string prop;
  region : string prop option; [@option]
  type_ : string prop; [@key "type"]
  encryption_key : artifact_store__encryption_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : artifact_store) -> ()

let yojson_of_artifact_store =
  (function
   | {
       location = v_location;
       region = v_region;
       type_ = v_type_;
       encryption_key = v_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_artifact_store__encryption_key)
               v_encryption_key
           in
           let bnd = "encryption_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : artifact_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_artifact_store

[@@@deriving.end]

type stage__action = {
  category : string prop;
  configuration : string prop Tf_core.assoc option; [@option]
  input_artifacts : string prop list option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  output_artifacts : string prop list option; [@option]
  owner : string prop;
  provider : string prop;
  region : string prop option; [@option]
  role_arn : string prop option; [@option]
  run_order : float prop option; [@option]
  timeout_in_minutes : float prop option; [@option]
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage__action) -> ()

let yojson_of_stage__action =
  (function
   | {
       category = v_category;
       configuration = v_configuration;
       input_artifacts = v_input_artifacts;
       name = v_name;
       namespace = v_namespace;
       output_artifacts = v_output_artifacts;
       owner = v_owner;
       provider = v_provider;
       region = v_region;
       role_arn = v_role_arn;
       run_order = v_run_order;
       timeout_in_minutes = v_timeout_in_minutes;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "run_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider in
         ("provider", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner in
         ("owner", arg) :: bnds
       in
       let bnds =
         match v_output_artifacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "output_artifacts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_input_artifacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "input_artifacts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "configuration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : stage__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage__action

[@@@deriving.end]

type stage = {
  name : string prop;
  action : stage__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stage) -> ()

let yojson_of_stage =
  (function
   | { name = v_name; action = v_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stage__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : stage -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stage

[@@@deriving.end]

type trigger__git_configuration__pull_request__branches = {
  excludes : string prop list option; [@option]
  includes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : trigger__git_configuration__pull_request__branches) -> ()

let yojson_of_trigger__git_configuration__pull_request__branches =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__pull_request__branches ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__pull_request__branches

[@@@deriving.end]

type trigger__git_configuration__pull_request__file_paths = {
  excludes : string prop list option; [@option]
  includes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : trigger__git_configuration__pull_request__file_paths) -> ()

let yojson_of_trigger__git_configuration__pull_request__file_paths =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__pull_request__file_paths ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_trigger__git_configuration__pull_request__file_paths

[@@@deriving.end]

type trigger__git_configuration__pull_request = {
  events : string prop list option; [@option]
  branches : trigger__git_configuration__pull_request__branches list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_paths :
    trigger__git_configuration__pull_request__file_paths list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration__pull_request) -> ()

let yojson_of_trigger__git_configuration__pull_request =
  (function
   | {
       events = v_events;
       branches = v_branches;
       file_paths = v_file_paths;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_file_paths then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__pull_request__file_paths)
               v_file_paths
           in
           let bnd = "file_paths", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_branches then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__pull_request__branches)
               v_branches
           in
           let bnd = "branches", arg in
           bnd :: bnds
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__pull_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__pull_request

[@@@deriving.end]

type trigger__git_configuration__push__branches = {
  excludes : string prop list option; [@option]
  includes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration__push__branches) -> ()

let yojson_of_trigger__git_configuration__push__branches =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__push__branches ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__push__branches

[@@@deriving.end]

type trigger__git_configuration__push__file_paths = {
  excludes : string prop list option; [@option]
  includes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration__push__file_paths) -> ()

let yojson_of_trigger__git_configuration__push__file_paths =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__push__file_paths ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__push__file_paths

[@@@deriving.end]

type trigger__git_configuration__push__tags = {
  excludes : string prop list option; [@option]
  includes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration__push__tags) -> ()

let yojson_of_trigger__git_configuration__push__tags =
  (function
   | { excludes = v_excludes; includes = v_includes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_includes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "includes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excludes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__push__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__push__tags

[@@@deriving.end]

type trigger__git_configuration__push = {
  branches : trigger__git_configuration__push__branches list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  file_paths : trigger__git_configuration__push__file_paths list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : trigger__git_configuration__push__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration__push) -> ()

let yojson_of_trigger__git_configuration__push =
  (function
   | {
       branches = v_branches;
       file_paths = v_file_paths;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__push__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_file_paths then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__push__file_paths)
               v_file_paths
           in
           let bnd = "file_paths", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_branches then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__push__branches)
               v_branches
           in
           let bnd = "branches", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration__push ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration__push

[@@@deriving.end]

type trigger__git_configuration = {
  source_action_name : string prop;
  pull_request : trigger__git_configuration__pull_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  push : trigger__git_configuration__push list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger__git_configuration) -> ()

let yojson_of_trigger__git_configuration =
  (function
   | {
       source_action_name = v_source_action_name;
       pull_request = v_pull_request;
       push = v_push;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_push then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__push)
               v_push
           in
           let bnd = "push", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pull_request then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_trigger__git_configuration__pull_request)
               v_pull_request
           in
           let bnd = "pull_request", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_action_name
         in
         ("source_action_name", arg) :: bnds
       in
       `Assoc bnds
    : trigger__git_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger__git_configuration

[@@@deriving.end]

type trigger = {
  provider_type : string prop;
  git_configuration : trigger__git_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger) -> ()

let yojson_of_trigger =
  (function
   | {
       provider_type = v_provider_type;
       git_configuration = v_git_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_git_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_trigger__git_configuration)
               v_git_configuration
           in
           let bnd = "git_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_type in
         ("provider_type", arg) :: bnds
       in
       `Assoc bnds
    : trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger

[@@@deriving.end]

type variable = {
  default_value : string prop option; [@option]
  description : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : variable) -> ()

let yojson_of_variable =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : variable -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_variable

[@@@deriving.end]

type aws_codepipeline = {
  execution_mode : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  pipeline_type : string prop option; [@option]
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  artifact_store : artifact_store list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stage : stage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trigger : trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  variable : variable list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codepipeline) -> ()

let yojson_of_aws_codepipeline =
  (function
   | {
       execution_mode = v_execution_mode;
       id = v_id;
       name = v_name;
       pipeline_type = v_pipeline_type;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       artifact_store = v_artifact_store;
       stage = v_stage;
       trigger = v_trigger;
       variable = v_variable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_variable then bnds
         else
           let arg =
             (yojson_of_list yojson_of_variable) v_variable
           in
           let bnd = "variable", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg = (yojson_of_list yojson_of_trigger) v_trigger in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stage then bnds
         else
           let arg = (yojson_of_list yojson_of_stage) v_stage in
           let bnd = "stage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_artifact_store then bnds
         else
           let arg =
             (yojson_of_list yojson_of_artifact_store)
               v_artifact_store
           in
           let bnd = "artifact_store", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_pipeline_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pipeline_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_execution_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codepipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codepipeline

[@@@deriving.end]

let artifact_store__encryption_key ~id ~type_ () :
    artifact_store__encryption_key =
  { id; type_ }

let artifact_store ?region ?(encryption_key = []) ~location ~type_ ()
    : artifact_store =
  { location; region; type_; encryption_key }

let stage__action ?configuration ?input_artifacts ?namespace
    ?output_artifacts ?region ?role_arn ?run_order
    ?timeout_in_minutes ~category ~name ~owner ~provider ~version ()
    : stage__action =
  {
    category;
    configuration;
    input_artifacts;
    name;
    namespace;
    output_artifacts;
    owner;
    provider;
    region;
    role_arn;
    run_order;
    timeout_in_minutes;
    version;
  }

let stage ~name ~action () : stage = { name; action }

let trigger__git_configuration__pull_request__branches ?excludes
    ?includes () : trigger__git_configuration__pull_request__branches
    =
  { excludes; includes }

let trigger__git_configuration__pull_request__file_paths ?excludes
    ?includes () :
    trigger__git_configuration__pull_request__file_paths =
  { excludes; includes }

let trigger__git_configuration__pull_request ?events ?(branches = [])
    ?(file_paths = []) () : trigger__git_configuration__pull_request
    =
  { events; branches; file_paths }

let trigger__git_configuration__push__branches ?excludes ?includes ()
    : trigger__git_configuration__push__branches =
  { excludes; includes }

let trigger__git_configuration__push__file_paths ?excludes ?includes
    () : trigger__git_configuration__push__file_paths =
  { excludes; includes }

let trigger__git_configuration__push__tags ?excludes ?includes () :
    trigger__git_configuration__push__tags =
  { excludes; includes }

let trigger__git_configuration__push ?(branches = [])
    ?(file_paths = []) ?(tags = []) () :
    trigger__git_configuration__push =
  { branches; file_paths; tags }

let trigger__git_configuration ?(pull_request = []) ?(push = [])
    ~source_action_name () : trigger__git_configuration =
  { source_action_name; pull_request; push }

let trigger ~provider_type ~git_configuration () : trigger =
  { provider_type; git_configuration }

let variable ?default_value ?description ~name () : variable =
  { default_value; description; name }

let aws_codepipeline ?execution_mode ?id ?pipeline_type ?tags
    ?tags_all ?(trigger = []) ?(variable = []) ~name ~role_arn
    ~artifact_store ~stage () : aws_codepipeline =
  {
    execution_mode;
    id;
    name;
    pipeline_type;
    role_arn;
    tags;
    tags_all;
    artifact_store;
    stage;
    trigger;
    variable;
  }

type t = {
  tf_name : string;
  arn : string prop;
  execution_mode : string prop;
  id : string prop;
  name : string prop;
  pipeline_type : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?execution_mode ?id ?pipeline_type ?tags ?tags_all
    ?(trigger = []) ?(variable = []) ~name ~role_arn ~artifact_store
    ~stage __id =
  let __type = "aws_codepipeline" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       execution_mode = Prop.computed __type __id "execution_mode";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pipeline_type = Prop.computed __type __id "pipeline_type";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codepipeline
        (aws_codepipeline ?execution_mode ?id ?pipeline_type ?tags
           ?tags_all ~trigger ~variable ~name ~role_arn
           ~artifact_store ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?execution_mode ?id ?pipeline_type ?tags
    ?tags_all ?(trigger = []) ?(variable = []) ~name ~role_arn
    ~artifact_store ~stage __id =
  let (r : _ Tf_core.resource) =
    make ?execution_mode ?id ?pipeline_type ?tags ?tags_all ~trigger
      ~variable ~name ~role_arn ~artifact_store ~stage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
