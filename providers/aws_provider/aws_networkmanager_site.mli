(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_site__location
type aws_networkmanager_site__timeouts
type aws_networkmanager_site

val aws_networkmanager_site :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_networkmanager_site__timeouts ->
  global_network_id:string ->
  location:aws_networkmanager_site__location list ->
  string ->
  unit
