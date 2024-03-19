(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule = {
  object_ownership : string prop;  (** object_ownership *)
}
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_ownership_controls = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls *)

let rule ~object_ownership () : rule = { object_ownership }

let aws_s3_bucket_ownership_controls ?id ~bucket ~rule () :
    aws_s3_bucket_ownership_controls =
  { bucket; id; rule }

type t = { bucket : string prop; id : string prop }

let register ?tf_module ?id ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_ownership_controls" in
  let __resource =
    aws_s3_bucket_ownership_controls ?id ~bucket ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_ownership_controls __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
