(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_static_route

val cloudflare_static_route :
  ?account_id:string prop ->
  ?colo_names:string prop list ->
  ?colo_regions:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?weight:float prop ->
  nexthop:string prop ->
  prefix:string prop ->
  priority:float prop ->
  string ->
  unit
