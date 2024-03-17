(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_classification_export_configuration__s3_destination
type aws_macie2_classification_export_configuration
type t = private { id : string prop }

val aws_macie2_classification_export_configuration :
  ?id:string prop ->
  s3_destination:
    aws_macie2_classification_export_configuration__s3_destination
    list ->
  string ->
  t
