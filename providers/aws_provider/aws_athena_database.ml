(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_database__acl_configuration = {
  s3_acl_option : string prop;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** aws_athena_database__acl_configuration *)

type aws_athena_database__encryption_configuration = {
  encryption_option : string prop;  (** encryption_option *)
  kms_key : string prop option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_athena_database__encryption_configuration *)

type aws_athena_database = {
  bucket : string prop option; [@option]  (** bucket *)
  comment : string prop option; [@option]  (** comment *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  acl_configuration : aws_athena_database__acl_configuration list;
  encryption_configuration :
    aws_athena_database__encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_athena_database *)

let aws_athena_database ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?id ?properties ~name ~acl_configuration
    ~encryption_configuration __resource_id =
  let __resource_type = "aws_athena_database" in
  let __resource =
    {
      bucket;
      comment;
      expected_bucket_owner;
      force_destroy;
      id;
      name;
      properties;
      acl_configuration;
      encryption_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_database __resource);
  ()
