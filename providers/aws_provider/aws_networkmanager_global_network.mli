(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_global_network__timeouts
type aws_networkmanager_global_network

val aws_networkmanager_global_network :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_networkmanager_global_network__timeouts ->
  string ->
  unit
