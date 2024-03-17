(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_access_point__public_access_block_configuration = {
  block_public_acls : bool option; [@option]
      (** block_public_acls *)
  block_public_policy : bool option; [@option]
      (** block_public_policy *)
  ignore_public_acls : bool option; [@option]
      (** ignore_public_acls *)
  restrict_public_buckets : bool option; [@option]
      (** restrict_public_buckets *)
}
[@@deriving yojson_of]
(** aws_s3_access_point__public_access_block_configuration *)

type aws_s3_access_point__vpc_configuration = {
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_s3_access_point__vpc_configuration *)

type aws_s3_access_point = {
  bucket : string;  (** bucket *)
  name : string;  (** name *)
  public_access_block_configuration :
    aws_s3_access_point__public_access_block_configuration list;
  vpc_configuration : aws_s3_access_point__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_s3_access_point *)

let aws_s3_access_point ~bucket ~name
    ~public_access_block_configuration ~vpc_configuration
    __resource_id =
  let __resource_type = "aws_s3_access_point" in
  let __resource =
    {
      bucket;
      name;
      public_access_block_configuration;
      vpc_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_access_point __resource);
  ()
