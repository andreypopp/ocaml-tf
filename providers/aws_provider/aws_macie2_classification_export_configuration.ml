(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_classification_export_configuration__s3_destination = {
  bucket_name : string prop;  (** bucket_name *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration__s3_destination *)

type aws_macie2_classification_export_configuration = {
  id : string prop option; [@option]  (** id *)
  s3_destination :
    aws_macie2_classification_export_configuration__s3_destination
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration *)

type t = { id : string prop }

let aws_macie2_classification_export_configuration ?id
    ~s3_destination __resource_id =
  let __resource_type =
    "aws_macie2_classification_export_configuration"
  in
  let __resource =
    ({ id; s3_destination }
      : aws_macie2_classification_export_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_classification_export_configuration
       __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
