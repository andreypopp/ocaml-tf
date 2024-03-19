(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_msk_configuration

val aws_msk_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?kafka_versions:string prop list ->
  name:string prop ->
  server_properties:string prop ->
  unit ->
  aws_msk_configuration

val yojson_of_aws_msk_configuration : aws_msk_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?kafka_versions:string prop list ->
  name:string prop ->
  server_properties:string prop ->
  string ->
  t
