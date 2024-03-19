(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type output_location = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
  s3_region : string prop option; [@option]  (** s3_region *)
}
[@@deriving yojson_of]
(** output_location *)

type targets = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** targets *)

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
  output_location : output_location list;
  targets : targets list;
}
[@@deriving yojson_of]
(** aws_ssm_association *)

let output_location ?s3_key_prefix ?s3_region ~s3_bucket_name () :
    output_location =
  { s3_bucket_name; s3_key_prefix; s3_region }

let targets ~key ~values () : targets = { key; values }

let aws_ssm_association ?apply_only_at_cron_interval
    ?association_name ?automation_target_parameter_name
    ?compliance_severity ?document_version ?id ?instance_id
    ?max_concurrency ?max_errors ?parameters ?schedule_expression
    ?sync_compliance ?wait_for_success_timeout_seconds ~name
    ~output_location ~targets () : aws_ssm_association =
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

type t = {
  apply_only_at_cron_interval : bool prop;
  arn : string prop;
  association_id : string prop;
  association_name : string prop;
  automation_target_parameter_name : string prop;
  compliance_severity : string prop;
  document_version : string prop;
  id : string prop;
  instance_id : string prop;
  max_concurrency : string prop;
  max_errors : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schedule_expression : string prop;
  sync_compliance : string prop;
  wait_for_success_timeout_seconds : float prop;
}

let register ?tf_module ?apply_only_at_cron_interval
    ?association_name ?automation_target_parameter_name
    ?compliance_severity ?document_version ?id ?instance_id
    ?max_concurrency ?max_errors ?parameters ?schedule_expression
    ?sync_compliance ?wait_for_success_timeout_seconds ~name
    ~output_location ~targets __resource_id =
  let __resource_type = "aws_ssm_association" in
  let __resource =
    aws_ssm_association ?apply_only_at_cron_interval
      ?association_name ?automation_target_parameter_name
      ?compliance_severity ?document_version ?id ?instance_id
      ?max_concurrency ?max_errors ?parameters ?schedule_expression
      ?sync_compliance ?wait_for_success_timeout_seconds ~name
      ~output_location ~targets ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_association __resource);
  let __resource_attributes =
    ({
       apply_only_at_cron_interval =
         Prop.computed __resource_type __resource_id
           "apply_only_at_cron_interval";
       arn = Prop.computed __resource_type __resource_id "arn";
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       association_name =
         Prop.computed __resource_type __resource_id
           "association_name";
       automation_target_parameter_name =
         Prop.computed __resource_type __resource_id
           "automation_target_parameter_name";
       compliance_severity =
         Prop.computed __resource_type __resource_id
           "compliance_severity";
       document_version =
         Prop.computed __resource_type __resource_id
           "document_version";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       max_concurrency =
         Prop.computed __resource_type __resource_id
           "max_concurrency";
       max_errors =
         Prop.computed __resource_type __resource_id "max_errors";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       schedule_expression =
         Prop.computed __resource_type __resource_id
           "schedule_expression";
       sync_compliance =
         Prop.computed __resource_type __resource_id
           "sync_compliance";
       wait_for_success_timeout_seconds =
         Prop.computed __resource_type __resource_id
           "wait_for_success_timeout_seconds";
     }
      : t)
  in
  __resource_attributes
