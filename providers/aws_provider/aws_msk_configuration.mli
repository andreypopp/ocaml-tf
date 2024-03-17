(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_configuration

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  kafka_versions : string list prop;
  latest_revision : float prop;
  name : string prop;
  server_properties : string prop;
}

val aws_msk_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?kafka_versions:string prop list ->
  name:string prop ->
  server_properties:string prop ->
  string ->
  t
