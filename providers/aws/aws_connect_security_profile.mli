(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_connect_security_profile

val aws_connect_security_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?permissions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  aws_connect_security_profile

val yojson_of_aws_connect_security_profile :
  aws_connect_security_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  organization_resource_id : string prop;
  permissions : string list prop;
  security_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?permissions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?permissions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
