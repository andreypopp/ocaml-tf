(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_vpc_attachment__options
type aws_networkmanager_vpc_attachment__timeouts
type aws_networkmanager_vpc_attachment

val aws_networkmanager_vpc_attachment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_vpc_attachment__timeouts ->
  core_network_id:string prop ->
  subnet_arns:string prop list ->
  vpc_arn:string prop ->
  options:aws_networkmanager_vpc_attachment__options list ->
  string ->
  unit
