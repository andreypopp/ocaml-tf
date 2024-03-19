(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_guardduty_publishing_destination

val aws_guardduty_publishing_destination :
  ?destination_type:string prop ->
  ?id:string prop ->
  destination_arn:string prop ->
  detector_id:string prop ->
  kms_key_arn:string prop ->
  unit ->
  aws_guardduty_publishing_destination

val yojson_of_aws_guardduty_publishing_destination :
  aws_guardduty_publishing_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_arn : string prop;
  destination_type : string prop;
  detector_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?destination_type:string prop ->
  ?id:string prop ->
  destination_arn:string prop ->
  detector_id:string prop ->
  kms_key_arn:string prop ->
  string ->
  t
