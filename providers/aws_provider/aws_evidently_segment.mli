(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_segment

type t = private {
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

val aws_evidently_segment :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  pattern:string prop ->
  string ->
  t
