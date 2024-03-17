(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_configuration

val aws_msk_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?kafka_versions:string prop list ->
  name:string prop ->
  server_properties:string prop ->
  string ->
  unit
