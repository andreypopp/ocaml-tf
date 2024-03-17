(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_internet_gateway_attachment__timeouts
type aws_internet_gateway_attachment

val aws_internet_gateway_attachment :
  ?id:string ->
  ?timeouts:aws_internet_gateway_attachment__timeouts ->
  internet_gateway_id:string ->
  vpc_id:string ->
  string ->
  unit
