(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_internet_gateway__timeouts
type aws_internet_gateway

val aws_internet_gateway :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_id:string ->
  ?timeouts:aws_internet_gateway__timeouts ->
  string ->
  unit
