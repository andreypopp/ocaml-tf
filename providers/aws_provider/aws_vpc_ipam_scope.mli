(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_scope__timeouts
type aws_vpc_ipam_scope

val aws_vpc_ipam_scope :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_scope__timeouts ->
  ipam_id:string prop ->
  string ->
  unit
