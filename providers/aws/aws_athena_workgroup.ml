(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_workgroup__configuration__engine_version = {
  effective_engine_version : string prop;
      (** effective_engine_version *)
  selected_engine_version : string prop option; [@option]
      (** selected_engine_version *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__engine_version *)

type aws_athena_workgroup__configuration__result_configuration__acl_configuration = {
  s3_acl_option : string prop;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__result_configuration__acl_configuration *)

type aws_athena_workgroup__configuration__result_configuration__encryption_configuration = {
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration__result_configuration__encryption_configuration *)

type aws_athena_workgroup__configuration__result_configuration = {
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  output_location : string prop option; [@option]
      (** output_location *)
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
  bytes_scanned_cutoff_per_query : float prop option; [@option]
      (** bytes_scanned_cutoff_per_query *)
  enforce_workgroup_configuration : bool prop option; [@option]
      (** enforce_workgroup_configuration *)
  execution_role : string prop option; [@option]
      (** execution_role *)
  publish_cloudwatch_metrics_enabled : bool prop option; [@option]
      (** publish_cloudwatch_metrics_enabled *)
  requester_pays_enabled : bool prop option; [@option]
      (** requester_pays_enabled *)
  engine_version :
    aws_athena_workgroup__configuration__engine_version list;
  result_configuration :
    aws_athena_workgroup__configuration__result_configuration list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup__configuration *)

type aws_athena_workgroup = {
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : aws_athena_workgroup__configuration list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup *)

type t = {
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_athena_workgroup ?description ?force_destroy ?id ?state ?tags
    ?tags_all ~name ~configuration __resource_id =
  let __resource_type = "aws_athena_workgroup" in
  let __resource =
    ({
       description;
       force_destroy;
       id;
       name;
       state;
       tags;
       tags_all;
       configuration;
     }
      : aws_athena_workgroup)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_workgroup __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
