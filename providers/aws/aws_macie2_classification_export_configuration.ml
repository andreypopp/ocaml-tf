(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type s3_destination = {
  bucket_name : string prop;  (** bucket_name *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** s3_destination *)

type aws_macie2_classification_export_configuration = {
  id : string prop option; [@option]  (** id *)
  s3_destination : s3_destination list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration *)

let s3_destination ?key_prefix ~bucket_name ~kms_key_arn () :
    s3_destination =
  { bucket_name; key_prefix; kms_key_arn }

let aws_macie2_classification_export_configuration ?id
    ~s3_destination () :
    aws_macie2_classification_export_configuration =
  { id; s3_destination }

type t = { id : string prop }

let register ?tf_module ?id ~s3_destination __resource_id =
  let __resource_type =
    "aws_macie2_classification_export_configuration"
  in
  let __resource =
    aws_macie2_classification_export_configuration ?id
      ~s3_destination ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_classification_export_configuration
       __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
