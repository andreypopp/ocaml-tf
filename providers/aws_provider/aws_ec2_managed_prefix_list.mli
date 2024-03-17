(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_managed_prefix_list__entry
type aws_ec2_managed_prefix_list

val aws_ec2_managed_prefix_list :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  address_family:string ->
  max_entries:float ->
  name:string ->
  entry:aws_ec2_managed_prefix_list__entry list ->
  string ->
  unit
