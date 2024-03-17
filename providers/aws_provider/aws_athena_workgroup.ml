(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_workgroup__configuration__engine_version = {
  effective_engine_version : string;  (** effective_engine_version *)
  selected_engine_version : string option; [@option]
      (** selected_engine_version *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__engine_version *)

type aws_athena_workgroup__configuration__result_configuration__acl_configuration = {
  s3_acl_option : string;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__result_configuration__acl_configuration *)

type aws_athena_workgroup__configuration__result_configuration__encryption_configuration = {
  encryption_option : string option; [@option]
      (** encryption_option *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__result_configuration__encryption_configuration *)

type aws_athena_workgroup__configuration__result_configuration = {
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  output_location : string option; [@option]  (** output_location *)
  acl_configuration :
    aws_athena_workgroup__configuration__result_configuration__acl_configuration
    list;
  encryption_configuration :
    aws_athena_workgroup__configuration__result_configuration__encryption_configuration
    list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__result_configuration *)

type aws_athena_workgroup__configuration = {
  bytes_scanned_cutoff_per_query : float option; [@option]
      (** bytes_scanned_cutoff_per_query *)
  enforce_workgroup_configuration : bool option; [@option]
      (** enforce_workgroup_configuration *)
  execution_role : string option; [@option]  (** execution_role *)
  publish_cloudwatch_metrics_enabled : bool option; [@option]
      (** publish_cloudwatch_metrics_enabled *)
  requester_pays_enabled : bool option; [@option]
      (** requester_pays_enabled *)
  engine_version :
    aws_athena_workgroup__configuration__engine_version list;
  result_configuration :
    aws_athena_workgroup__configuration__result_configuration list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration *)

type aws_athena_workgroup = {
  description : string option; [@option]  (** description *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  name : string;  (** name *)
  state : string option; [@option]  (** state *)
  tags : (string * string) list option; [@option]  (** tags *)
  configuration : aws_athena_workgroup__configuration list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup *)

let aws_athena_workgroup ?description ?force_destroy ?state ?tags
    ~name ~configuration __resource_id =
  let __resource_type = "aws_athena_workgroup" in
  let __resource =
    { description; force_destroy; name; state; tags; configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_workgroup __resource);
  ()
