(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_device__aws_location
type aws_networkmanager_device__location
type aws_networkmanager_device__timeouts
type aws_networkmanager_device

val aws_networkmanager_device :
  ?description:string ->
  ?id:string ->
  ?model:string ->
  ?serial_number:string ->
  ?site_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  ?vendor:string ->
  ?timeouts:aws_networkmanager_device__timeouts ->
  global_network_id:string ->
  aws_location:aws_networkmanager_device__aws_location list ->
  location:aws_networkmanager_device__location list ->
  string ->
  unit
