(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string prop;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** rule__apply_server_side_encryption_by_default *)

type rule = {
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  apply_server_side_encryption_by_default :
    rule__apply_server_side_encryption_by_default list;
}
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_server_side_encryption_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_server_side_encryption_configuration *)

let rule__apply_server_side_encryption_by_default ?kms_master_key_id
    ~sse_algorithm () : rule__apply_server_side_encryption_by_default
    =
  { kms_master_key_id; sse_algorithm }

let rule ?bucket_key_enabled ~apply_server_side_encryption_by_default
    () : rule =
  { bucket_key_enabled; apply_server_side_encryption_by_default }

let aws_s3_bucket_server_side_encryption_configuration
    ?expected_bucket_owner ?id ~bucket ~rule () :
    aws_s3_bucket_server_side_encryption_configuration =
  { bucket; expected_bucket_owner; id; rule }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~rule
    __resource_id =
  let __resource_type =
    "aws_s3_bucket_server_side_encryption_configuration"
  in
  let __resource =
    aws_s3_bucket_server_side_encryption_configuration
      ?expected_bucket_owner ?id ~bucket ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_server_side_encryption_configuration
       __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
