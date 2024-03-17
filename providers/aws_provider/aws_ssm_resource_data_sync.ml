(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_resource_data_sync__s3_destination = {
  bucket_name : string;  (** bucket_name *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  prefix : string option; [@option]  (** prefix *)
  region : string;  (** region *)
  sync_format : string option; [@option]  (** sync_format *)
}
[@@deriving yojson_of]
(** aws_ssm_resource_data_sync__s3_destination *)

type aws_ssm_resource_data_sync = {
  name : string;  (** name *)
  s3_destination : aws_ssm_resource_data_sync__s3_destination list;
}
[@@deriving yojson_of]
(** aws_ssm_resource_data_sync *)

let aws_ssm_resource_data_sync ~name ~s3_destination __resource_id =
  let __resource_type = "aws_ssm_resource_data_sync" in
  let __resource = { name; s3_destination } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_resource_data_sync __resource);
  ()
