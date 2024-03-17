(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_link__bandwidth
type aws_networkmanager_link__timeouts
type aws_networkmanager_link

val aws_networkmanager_link :
  ?description:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_networkmanager_link__timeouts ->
  global_network_id:string prop ->
  site_id:string prop ->
  bandwidth:aws_networkmanager_link__bandwidth list ->
  string ->
  unit
