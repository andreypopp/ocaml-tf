(** Provides a resource, that manages Cloudflare static routes for Magic
Transit or Magic WAN. Static routes are used to route traffic
through GRE tunnels.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  unit ->
  cloudflare_static_route

val yojson_of_cloudflare_static_route :
  cloudflare_static_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  colo_names : string list prop;
  colo_regions : string list prop;
  description : string prop;
  id : string prop;
  nexthop : string prop;
  prefix : string prop;
  priority : float prop;
  weight : float prop;
}

val register :
  ?tf_module:tf_module ->
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
  t

val make :
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
  t Tf_core.resource
