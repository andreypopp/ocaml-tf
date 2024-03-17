(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rekognition_collection__timeouts
type aws_rekognition_collection

val aws_rekognition_collection :
  ?tags:(string * string prop) list ->
  ?timeouts:aws_rekognition_collection__timeouts ->
  collection_id:string prop ->
  string ->
  unit
