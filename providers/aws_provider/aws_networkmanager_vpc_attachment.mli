(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_vpc_attachment__options
type aws_networkmanager_vpc_attachment__timeouts
type aws_networkmanager_vpc_attachment

val aws_networkmanager_vpc_attachment :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_networkmanager_vpc_attachment__timeouts ->
  core_network_id:string ->
  subnet_arns:string list ->
  vpc_arn:string ->
  options:aws_networkmanager_vpc_attachment__options list ->
  string ->
  unit
