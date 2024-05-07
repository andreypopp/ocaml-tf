(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_evidently_segment

val aws_evidently_segment :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  pattern:string prop ->
  unit ->
  aws_evidently_segment

val yojson_of_aws_evidently_segment : aws_evidently_segment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  pattern : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  pattern:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  pattern:string prop ->
  string ->
  t Tf_core.resource
