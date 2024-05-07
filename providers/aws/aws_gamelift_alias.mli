(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_strategy

val routing_strategy :
  ?fleet_id:string prop ->
  ?message:string prop ->
  type_:string prop ->
  unit ->
  routing_strategy

type aws_gamelift_alias

val aws_gamelift_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  routing_strategy:routing_strategy list ->
  unit ->
  aws_gamelift_alias

val yojson_of_aws_gamelift_alias : aws_gamelift_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
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
  routing_strategy:routing_strategy list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  routing_strategy:routing_strategy list ->
  string ->
  t Tf_core.resource
