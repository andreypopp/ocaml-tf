(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_site__location
type aws_networkmanager_site__timeouts
type aws_networkmanager_site

val aws_networkmanager_site :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_site__timeouts ->
  global_network_id:string prop ->
  location:aws_networkmanager_site__location list ->
  string ->
  unit
