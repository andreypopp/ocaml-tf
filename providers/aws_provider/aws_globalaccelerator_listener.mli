(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_globalaccelerator_listener__port_range
type aws_globalaccelerator_listener__timeouts
type aws_globalaccelerator_listener

val aws_globalaccelerator_listener :
  ?client_affinity:string prop ->
  ?id:string prop ->
  ?timeouts:aws_globalaccelerator_listener__timeouts ->
  accelerator_arn:string prop ->
  protocol:string prop ->
  port_range:aws_globalaccelerator_listener__port_range list ->
  string ->
  unit
