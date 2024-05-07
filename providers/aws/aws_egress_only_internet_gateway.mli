(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_egress_only_internet_gateway

val aws_egress_only_internet_gateway :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  unit ->
  aws_egress_only_internet_gateway

val yojson_of_aws_egress_only_internet_gateway :
  aws_egress_only_internet_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
