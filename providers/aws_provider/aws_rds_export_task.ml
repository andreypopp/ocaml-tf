(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rds_export_task__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_rds_export_task__timeouts *)

type aws_rds_export_task = {
  export_only : string list option; [@option]  (** export_only *)
  export_task_identifier : string;  (** export_task_identifier *)
  iam_role_arn : string;  (** iam_role_arn *)
  kms_key_id : string;  (** kms_key_id *)
  s3_bucket_name : string;  (** s3_bucket_name *)
  source_arn : string;  (** source_arn *)
  timeouts : aws_rds_export_task__timeouts option;
}
[@@deriving yojson_of]
(** aws_rds_export_task *)

let aws_rds_export_task ?export_only ?timeouts
    ~export_task_identifier ~iam_role_arn ~kms_key_id ~s3_bucket_name
    ~source_arn __resource_id =
  let __resource_type = "aws_rds_export_task" in
  let __resource =
    {
      export_only;
      export_task_identifier;
      iam_role_arn;
      kms_key_id;
      s3_bucket_name;
      source_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_export_task __resource);
  ()
