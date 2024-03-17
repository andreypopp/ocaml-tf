(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fis_experiment_template__action__parameter = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action__parameter *)

type aws_fis_experiment_template__action__target = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action__target *)

type aws_fis_experiment_template__action = {
  action_id : string prop;  (** action_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  start_after : string prop list option; [@option]
      (** start_after *)
  parameter : aws_fis_experiment_template__action__parameter list;
  target : aws_fis_experiment_template__action__target list;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__action *)

type aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration = {
  log_group_arn : string prop;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration *)

type aws_fis_experiment_template__log_configuration__s3_configuration = {
  bucket_name : string prop;  (** bucket_name *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__log_configuration__s3_configuration *)

type aws_fis_experiment_template__log_configuration = {
  log_schema_version : float prop;  (** log_schema_version *)
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
  source : string prop;  (** source *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__stop_condition *)

type aws_fis_experiment_template__target__filter = {
  path : string prop;  (** path *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target__filter *)

type aws_fis_experiment_template__target__resource_tag = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target__resource_tag *)

type aws_fis_experiment_template__target = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_arns : string prop list option; [@option]
      (** resource_arns *)
  resource_type : string prop;  (** resource_type *)
  selection_mode : string prop;  (** selection_mode *)
  filter : aws_fis_experiment_template__target__filter list;
  resource_tag :
    aws_fis_experiment_template__target__resource_tag list;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__target *)

type aws_fis_experiment_template__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fis_experiment_template__timeouts *)

type aws_fis_experiment_template = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : aws_fis_experiment_template__action list;
  log_configuration :
    aws_fis_experiment_template__log_configuration list;
  stop_condition : aws_fis_experiment_template__stop_condition list;
  target : aws_fis_experiment_template__target list;
  timeouts : aws_fis_experiment_template__timeouts option;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template *)

type t = {
  description : string prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_fis_experiment_template ?id ?tags ?tags_all ?timeouts
    ~description ~role_arn ~action ~log_configuration ~stop_condition
    ~target __resource_id =
  let __resource_type = "aws_fis_experiment_template" in
  let __resource =
    ({
       description;
       id;
       role_arn;
       tags;
       tags_all;
       action;
       log_configuration;
       stop_condition;
       target;
       timeouts;
     }
      : aws_fis_experiment_template)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fis_experiment_template __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
