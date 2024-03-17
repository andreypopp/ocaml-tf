(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_custom_data_identifier

type t = private {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  id : string prop;
  ignore_words : string list prop;
  keywords : string list prop;
  maximum_match_distance : float prop;
  name : string prop;
  name_prefix : string prop;
  regex : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_macie2_custom_data_identifier :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_words:string prop list ->
  ?keywords:string prop list ->
  ?maximum_match_distance:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?regex:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
