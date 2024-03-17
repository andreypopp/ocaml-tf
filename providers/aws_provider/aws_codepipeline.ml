(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codepipeline__artifact_store__encryption_key = {
  id : string;  (** id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codepipeline__artifact_store__encryption_key *)

type aws_codepipeline__artifact_store = {
  location : string;  (** location *)
  region : string option; [@option]  (** region *)
  type_ : string; [@key "type"]  (** type *)
  encryption_key :
    aws_codepipeline__artifact_store__encryption_key list;
}
[@@deriving yojson_of]
(** aws_codepipeline__artifact_store *)

type aws_codepipeline__stage__action = {
  category : string;  (** category *)
  configuration : (string * string) list option; [@option]
      (** configuration *)
  input_artifacts : string list option; [@option]
      (** input_artifacts *)
  name : string;  (** name *)
  namespace : string option; [@option]  (** namespace *)
  output_artifacts : string list option; [@option]
      (** output_artifacts *)
  owner : string;  (** owner *)
  provider : string;  (** provider *)
  region : string option; [@option]  (** region *)
  role_arn : string option; [@option]  (** role_arn *)
  run_order : float option; [@option]  (** run_order *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** aws_codepipeline__stage__action *)

type aws_codepipeline__stage = {
  name : string;  (** name *)
  action : aws_codepipeline__stage__action list;
}
[@@deriving yojson_of]
(** aws_codepipeline__stage *)

type aws_codepipeline__trigger__git_configuration__pull_request__branches = {
  excludes : string list option; [@option]  (** excludes *)
  includes : string list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__pull_request__branches *)

type aws_codepipeline__trigger__git_configuration__pull_request__file_paths = {
  excludes : string list option; [@option]  (** excludes *)
  includes : string list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__pull_request__file_paths *)

type aws_codepipeline__trigger__git_configuration__pull_request = {
  events : string list option; [@option]  (** events *)
  branches :
    aws_codepipeline__trigger__git_configuration__pull_request__branches
    list;
  file_paths :
    aws_codepipeline__trigger__git_configuration__pull_request__file_paths
    list;
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__pull_request *)

type aws_codepipeline__trigger__git_configuration__push__branches = {
  excludes : string list option; [@option]  (** excludes *)
  includes : string list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__push__branches *)

type aws_codepipeline__trigger__git_configuration__push__file_paths = {
  excludes : string list option; [@option]  (** excludes *)
  includes : string list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__push__file_paths *)

type aws_codepipeline__trigger__git_configuration__push__tags = {
  excludes : string list option; [@option]  (** excludes *)
  includes : string list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__push__tags *)

type aws_codepipeline__trigger__git_configuration__push = {
  branches :
    aws_codepipeline__trigger__git_configuration__push__branches list;
  file_paths :
    aws_codepipeline__trigger__git_configuration__push__file_paths
    list;
  tags :
    aws_codepipeline__trigger__git_configuration__push__tags list;
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration__push *)

type aws_codepipeline__trigger__git_configuration = {
  source_action_name : string;  (** source_action_name *)
  pull_request :
    aws_codepipeline__trigger__git_configuration__pull_request list;
  push : aws_codepipeline__trigger__git_configuration__push list;
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger__git_configuration *)

type aws_codepipeline__trigger = {
  provider_type : string;  (** provider_type *)
  git_configuration :
    aws_codepipeline__trigger__git_configuration list;
}
[@@deriving yojson_of]
(** aws_codepipeline__trigger *)

type aws_codepipeline__variable = {
  default_value : string option; [@option]  (** default_value *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_codepipeline__variable *)

type aws_codepipeline = {
  execution_mode : string option; [@option]  (** execution_mode *)
  name : string;  (** name *)
  pipeline_type : string option; [@option]  (** pipeline_type *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  artifact_store : aws_codepipeline__artifact_store list;
  stage : aws_codepipeline__stage list;
  trigger : aws_codepipeline__trigger list;
  variable : aws_codepipeline__variable list;
}
[@@deriving yojson_of]
(** aws_codepipeline *)

let aws_codepipeline ?execution_mode ?pipeline_type ?tags ~name
    ~role_arn ~artifact_store ~stage ~trigger ~variable __resource_id
    =
  let __resource_type = "aws_codepipeline" in
  let __resource =
    {
      execution_mode;
      name;
      pipeline_type;
      role_arn;
      tags;
      artifact_store;
      stage;
      trigger;
      variable;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codepipeline __resource);
  ()
