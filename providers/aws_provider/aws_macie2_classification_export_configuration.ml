(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_classification_export_configuration__s3_destination = {
  bucket_name : string;  (** bucket_name *)
  key_prefix : string option; [@option]  (** key_prefix *)
  kms_key_arn : string;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration__s3_destination *)

type aws_macie2_classification_export_configuration = {
  id : string option; [@option]  (** id *)
  s3_destination :
    aws_macie2_classification_export_configuration__s3_destination
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration *)

let aws_macie2_classification_export_configuration ?id
    ~s3_destination __resource_id =
  let __resource_type =
    "aws_macie2_classification_export_configuration"
  in
  let __resource = { id; s3_destination } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_classification_export_configuration
       __resource);
  ()
