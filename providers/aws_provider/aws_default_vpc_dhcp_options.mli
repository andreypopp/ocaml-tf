(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_vpc_dhcp_options

val aws_default_vpc_dhcp_options :
  ?id:string prop ->
  ?owner_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
