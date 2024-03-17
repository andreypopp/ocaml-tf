(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ram_resource_share__timeouts
type aws_ram_resource_share

val aws_ram_resource_share :
  ?allow_external_principals:bool prop ->
  ?id:string prop ->
  ?permission_arns:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ram_resource_share__timeouts ->
  name:string prop ->
  string ->
  unit
