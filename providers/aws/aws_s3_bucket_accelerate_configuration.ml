(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_accelerate_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_accelerate_configuration *)

let aws_s3_bucket_accelerate_configuration ?expected_bucket_owner ?id
    ~bucket ~status () : aws_s3_bucket_accelerate_configuration =
  { bucket; expected_bucket_owner; id; status }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  status : string prop;
}

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~status
    __resource_id =
  let __resource_type = "aws_s3_bucket_accelerate_configuration" in
  let __resource =
    aws_s3_bucket_accelerate_configuration ?expected_bucket_owner ?id
      ~bucket ~status ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_accelerate_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
