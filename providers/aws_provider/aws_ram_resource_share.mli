(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ram_resource_share__timeouts
type aws_ram_resource_share

val aws_ram_resource_share :
  ?allow_external_principals:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_ram_resource_share__timeouts ->
  name:string ->
  string ->
  unit
