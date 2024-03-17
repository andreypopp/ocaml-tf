(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_association__output_location = {
  s3_bucket_name : string;  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
  s3_region : string option; [@option]  (** s3_region *)
}
[@@deriving yojson_of]
(** aws_ssm_association__output_location *)

type aws_ssm_association__targets = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_association__targets *)

type aws_ssm_association = {
  apply_only_at_cron_interval : bool option; [@option]
      (** apply_only_at_cron_interval *)
  association_name : string option; [@option]
      (** association_name *)
  automation_target_parameter_name : string option; [@option]
      (** automation_target_parameter_name *)
  compliance_severity : string option; [@option]
      (** compliance_severity *)
  document_version : string option; [@option]
      (** document_version *)
  id : string option; [@option]  (** id *)
  instance_id : string option; [@option]  (** instance_id *)
  max_concurrency : string option; [@option]  (** max_concurrency *)
  max_errors : string option; [@option]  (** max_errors *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  schedule_expression : string option; [@option]
      (** schedule_expression *)
  sync_compliance : string option; [@option]  (** sync_compliance *)
  wait_for_success_timeout_seconds : float option; [@option]
      (** wait_for_success_timeout_seconds *)
  output_location : aws_ssm_association__output_location list;
  targets : aws_ssm_association__targets list;
}
[@@deriving yojson_of]
(** aws_ssm_association *)

let aws_ssm_association ?apply_only_at_cron_interval
    ?association_name ?automation_target_parameter_name
    ?compliance_severity ?document_version ?id ?instance_id
    ?max_concurrency ?max_errors ?parameters ?schedule_expression
    ?sync_compliance ?wait_for_success_timeout_seconds ~name
    ~output_location ~targets __resource_id =
  let __resource_type = "aws_ssm_association" in
  let __resource =
    {
      apply_only_at_cron_interval;
      association_name;
      automation_target_parameter_name;
      compliance_severity;
      document_version;
      id;
      instance_id;
      max_concurrency;
      max_errors;
      name;
      parameters;
      schedule_expression;
      sync_compliance;
      wait_for_success_timeout_seconds;
      output_location;
      targets;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_association __resource);
  ()
