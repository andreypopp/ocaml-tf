(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_managed_prefix_list_entry

val aws_ec2_managed_prefix_list_entry :
  ?description:string prop ->
  ?id:string prop ->
  cidr:string prop ->
  prefix_list_id:string prop ->
  string ->
  unit
