(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_gamelift_build__storage_location
type aws_gamelift_build

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  operating_system : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val aws_gamelift_build :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?version:string prop ->
  name:string prop ->
  operating_system:string prop ->
  storage_location:aws_gamelift_build__storage_location list ->
  string ->
  t
