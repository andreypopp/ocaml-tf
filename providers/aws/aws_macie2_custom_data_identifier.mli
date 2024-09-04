(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_macie2_custom_data_identifier

val aws_macie2_custom_data_identifier :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_words:string prop list ->
  ?keywords:string prop list ->
  ?maximum_match_distance:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?regex:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_macie2_custom_data_identifier

val yojson_of_aws_macie2_custom_data_identifier :
  aws_macie2_custom_data_identifier -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_words:string prop list ->
  ?keywords:string prop list ->
  ?maximum_match_distance:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?regex:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_words:string prop list ->
  ?keywords:string prop list ->
  ?maximum_match_distance:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?regex:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
