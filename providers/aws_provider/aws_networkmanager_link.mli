(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_link__bandwidth
type aws_networkmanager_link__timeouts
type aws_networkmanager_link

val aws_networkmanager_link :
  ?description:string ->
  ?id:string ->
  ?provider_name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_networkmanager_link__timeouts ->
  global_network_id:string ->
  site_id:string ->
  bandwidth:aws_networkmanager_link__bandwidth list ->
  string ->
  unit
