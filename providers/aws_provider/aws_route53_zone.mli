(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_zone__vpc
type aws_route53_zone

val aws_route53_zone :
  ?comment:string ->
  ?delegation_set_id:string ->
  ?force_destroy:bool ->
  ?tags:(string * string) list ->
  name:string ->
  vpc:aws_route53_zone__vpc list ->
  string ->
  unit
