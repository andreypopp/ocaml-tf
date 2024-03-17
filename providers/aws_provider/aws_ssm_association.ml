(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_association__output_location = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
  s3_region : string prop option; [@option]  (** s3_region *)
}
[@@deriving yojson_of]
(** aws_ssm_association__output_location *)

type aws_ssm_association__targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_association__targets *)

type aws_ssm_association = {
  apply_only_at_cron_interval : bool prop option; [@option]
      (** apply_only_at_cron_interval *)
  association_name : string prop option; [@option]
      (** association_name *)
  automation_target_parameter_name : string prop option; [@option]
      (** automation_target_parameter_name *)
  compliance_severity : string prop option; [@option]
      (** compliance_severity *)
  document_version : string prop option; [@option]
      (** document_version *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop option; [@option]  (** instance_id *)
  max_concurrency : string prop option; [@option]
      (** max_concurrency *)
  max_errors : string prop option; [@option]  (** max_errors *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  schedule_expression : string prop option; [@option]
      (** schedule_expression *)
  sync_compliance : string prop option; [@option]
      (** sync_compliance *)
  wait_for_success_timeout_seconds : float prop option; [@option]
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
