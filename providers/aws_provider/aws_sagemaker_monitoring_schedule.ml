(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config = {
  schedule_expression : string;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config *)

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config = {
  monitoring_job_definition_name : string;
      (** monitoring_job_definition_name *)
  monitoring_type : string;  (** monitoring_type *)
  schedule_config :
    aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule__monitoring_schedule_config *)

type aws_sagemaker_monitoring_schedule = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  monitoring_schedule_config :
    aws_sagemaker_monitoring_schedule__monitoring_schedule_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule *)

let aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config __resource_id =
  let __resource_type = "aws_sagemaker_monitoring_schedule" in
  let __resource =
    { id; name; tags; tags_all; monitoring_schedule_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_monitoring_schedule __resource);
  ()
