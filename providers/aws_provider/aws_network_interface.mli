(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_network_interface__attachment
type aws_network_interface

val aws_network_interface :
  ?description:string ->
  ?ipv6_address_list_enabled:bool ->
  ?private_ip_list_enabled:bool ->
  ?source_dest_check:bool ->
  ?tags:(string * string) list ->
  subnet_id:string ->
  attachment:aws_network_interface__attachment list ->
  string ->
  unit
