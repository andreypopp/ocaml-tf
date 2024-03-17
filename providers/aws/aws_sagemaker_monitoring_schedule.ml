(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config = {
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config *)

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config = {
  monitoring_job_definition_name : string prop;
      (** monitoring_job_definition_name *)
  monitoring_type : string prop;  (** monitoring_type *)
  schedule_config :
    aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule__monitoring_schedule_config *)

type aws_sagemaker_monitoring_schedule = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  monitoring_schedule_config :
    aws_sagemaker_monitoring_schedule__monitoring_schedule_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config __resource_id =
  let __resource_type = "aws_sagemaker_monitoring_schedule" in
  let __resource =
    ({ id; name; tags; tags_all; monitoring_schedule_config }
      : aws_sagemaker_monitoring_schedule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_monitoring_schedule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
