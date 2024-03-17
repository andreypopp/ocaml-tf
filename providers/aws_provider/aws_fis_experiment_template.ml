(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fis_experiment_template__action__parameter = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action__parameter *)

type aws_fis_experiment_template__action__target = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action__target *)

type aws_fis_experiment_template__action = {
  action_id : string;  (** action_id *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  start_after : string list option; [@option]  (** start_after *)
  parameter : aws_fis_experiment_template__action__parameter list;
  target : aws_fis_experiment_template__action__target list;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action *)

type aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration = {
  log_group_arn : string;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration *)

type aws_fis_experiment_template__log_configuration__s3_configuration = {
  bucket_name : string;  (** bucket_name *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__log_configuration__s3_configuration *)

type aws_fis_experiment_template__log_configuration = {
  log_schema_version : float;  (** log_schema_version *)
  cloudwatch_logs_configuration :
    aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration
    list;
  s3_configuration :
    aws_fis_experiment_template__log_configuration__s3_configuration
    list;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__log_configuration *)

type aws_fis_experiment_template__stop_condition = {
  source : string;  (** source *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__stop_condition *)

type aws_fis_experiment_template__target__filter = {
  path : string;  (** path *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target__filter *)

type aws_fis_experiment_template__target__resource_tag = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target__resource_tag *)

type aws_fis_experiment_template__target = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_arns : string list option; [@option]  (** resource_arns *)
  resource_type : string;  (** resource_type *)
  selection_mode : string;  (** selection_mode *)
  filter : aws_fis_experiment_template__target__filter list;
  resource_tag :
    aws_fis_experiment_template__target__resource_tag list;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target *)

type aws_fis_experiment_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__timeouts *)

type aws_fis_experiment_template = {
  description : string;  (** description *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  action : aws_fis_experiment_template__action list;
  log_configuration :
    aws_fis_experiment_template__log_configuration list;
  stop_condition : aws_fis_experiment_template__stop_condition list;
  target : aws_fis_experiment_template__target list;
  timeouts : aws_fis_experiment_template__timeouts option;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template *)

let aws_fis_experiment_template ?tags ?timeouts ~description
    ~role_arn ~action ~log_configuration ~stop_condition ~target
    __resource_id =
  let __resource_type = "aws_fis_experiment_template" in
  let __resource =
    {
      description;
      role_arn;
      tags;
      action;
      log_configuration;
      stop_condition;
      target;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fis_experiment_template __resource);
  ()
