(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_aggregate_authorization

type t = private {
  account_id : string prop;
  arn : string prop;
  id : string prop;
  region : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_config_aggregate_authorization :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  account_id:string prop ->
  region:string prop ->
  string ->
  t
