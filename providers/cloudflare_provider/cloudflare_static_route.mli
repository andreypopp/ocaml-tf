(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_static_route

val cloudflare_static_route :
  ?account_id:string ->
  ?colo_names:string list ->
  ?colo_regions:string list ->
  ?description:string ->
  ?id:string ->
  ?weight:float ->
  nexthop:string ->
  prefix:string ->
  priority:float ->
  string ->
  unit
