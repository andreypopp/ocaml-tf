(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_rds_export_task = {
  export_only : string prop list option; [@option]
      (** export_only *)
  export_task_identifier : string prop;
      (** export_task_identifier *)
  iam_role_arn : string prop;  (** iam_role_arn *)
  kms_key_id : string prop;  (** kms_key_id *)
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_prefix : string prop option; [@option]  (** s3_prefix *)
  source_arn : string prop;  (** source_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_export_task *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_rds_export_task ?export_only ?s3_prefix ?timeouts
    ~export_task_identifier ~iam_role_arn ~kms_key_id ~s3_bucket_name
    ~source_arn () : aws_rds_export_task =
  {
    export_only;
    export_task_identifier;
    iam_role_arn;
    kms_key_id;
    s3_bucket_name;
    s3_prefix;
    source_arn;
    timeouts;
  }

type t = {
  export_only : string list prop;
  export_task_identifier : string prop;
  failure_cause : string prop;
  iam_role_arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  percent_progress : float prop;
  s3_bucket_name : string prop;
  s3_prefix : string prop;
  snapshot_time : string prop;
  source_arn : string prop;
  source_type : string prop;
  status : string prop;
  task_end_time : string prop;
  task_start_time : string prop;
  warning_message : string prop;
}

let register ?tf_module ?export_only ?s3_prefix ?timeouts
    ~export_task_identifier ~iam_role_arn ~kms_key_id ~s3_bucket_name
    ~source_arn __resource_id =
  let __resource_type = "aws_rds_export_task" in
  let __resource =
    aws_rds_export_task ?export_only ?s3_prefix ?timeouts
      ~export_task_identifier ~iam_role_arn ~kms_key_id
      ~s3_bucket_name ~source_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_export_task __resource);
  let __resource_attributes =
    ({
       export_only =
         Prop.computed __resource_type __resource_id "export_only";
       export_task_identifier =
         Prop.computed __resource_type __resource_id
           "export_task_identifier";
       failure_cause =
         Prop.computed __resource_type __resource_id "failure_cause";
       iam_role_arn =
         Prop.computed __resource_type __resource_id "iam_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       percent_progress =
         Prop.computed __resource_type __resource_id
           "percent_progress";
       s3_bucket_name =
         Prop.computed __resource_type __resource_id "s3_bucket_name";
       s3_prefix =
         Prop.computed __resource_type __resource_id "s3_prefix";
       snapshot_time =
         Prop.computed __resource_type __resource_id "snapshot_time";
       source_arn =
         Prop.computed __resource_type __resource_id "source_arn";
       source_type =
         Prop.computed __resource_type __resource_id "source_type";
       status = Prop.computed __resource_type __resource_id "status";
       task_end_time =
         Prop.computed __resource_type __resource_id "task_end_time";
       task_start_time =
         Prop.computed __resource_type __resource_id
           "task_start_time";
       warning_message =
         Prop.computed __resource_type __resource_id
           "warning_message";
     }
      : t)
  in
  __resource_attributes
