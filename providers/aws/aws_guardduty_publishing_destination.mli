(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_publishing_destination

type t = private {
  destination_arn : string prop;
  destination_type : string prop;
  detector_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
}

val aws_guardduty_publishing_destination :
  ?destination_type:string prop ->
  ?id:string prop ->
  destination_arn:string prop ->
  detector_id:string prop ->
  kms_key_arn:string prop ->
  string ->
  t
