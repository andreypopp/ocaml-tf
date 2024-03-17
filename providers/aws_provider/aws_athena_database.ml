(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_database__acl_configuration = {
  s3_acl_option : string;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** aws_athena_database__acl_configuration *)

type aws_athena_database__encryption_configuration = {
  encryption_option : string;  (** encryption_option *)
  kms_key : string option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_athena_database__encryption_configuration *)

type aws_athena_database = {
  bucket : string option; [@option]  (** bucket *)
  comment : string option; [@option]  (** comment *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  name : string;  (** name *)
  properties : (string * string) list option; [@option]
      (** properties *)
  acl_configuration : aws_athena_database__acl_configuration list;
  encryption_configuration :
    aws_athena_database__encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_athena_database *)

let aws_athena_database ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?properties ~name ~acl_configuration
    ~encryption_configuration __resource_id =
  let __resource_type = "aws_athena_database" in
  let __resource =
    {
      bucket;
      comment;
      expected_bucket_owner;
      force_destroy;
      name;
      properties;
      acl_configuration;
      encryption_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_database __resource);
  ()
