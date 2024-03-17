(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rekognition_collection__timeouts
type aws_rekognition_collection

type t = private {
  arn : string prop;
  collection_id : string prop;
  face_model_version : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_rekognition_collection :
  ?tags:(string * string prop) list ->
  ?timeouts:aws_rekognition_collection__timeouts ->
  collection_id:string prop ->
  string ->
  t
