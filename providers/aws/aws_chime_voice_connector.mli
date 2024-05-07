(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_chime_voice_connector

val aws_chime_voice_connector :
  ?aws_region:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  require_encryption:bool prop ->
  unit ->
  aws_chime_voice_connector

val yojson_of_aws_chime_voice_connector :
  aws_chime_voice_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  outbound_host_name : string prop;
  require_encryption : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_region:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  require_encryption:bool prop ->
  string ->
  t

val make :
  ?aws_region:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  require_encryption:bool prop ->
  string ->
  t Tf_core.resource
