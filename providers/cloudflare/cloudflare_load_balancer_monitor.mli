(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type header

val header :
  header:string prop -> values:string prop list -> unit -> header

type cloudflare_load_balancer_monitor

val cloudflare_load_balancer_monitor :
  ?allow_insecure:bool prop ->
  ?consecutive_down:float prop ->
  ?consecutive_up:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?probe_zone:string prop ->
  ?retries:float prop ->
  ?timeout:float prop ->
  ?type_:string prop ->
  account_id:string prop ->
  header:header list ->
  unit ->
  cloudflare_load_balancer_monitor

val yojson_of_cloudflare_load_balancer_monitor :
  cloudflare_load_balancer_monitor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  allow_insecure : bool prop;
  consecutive_down : float prop;
  consecutive_up : float prop;
  created_on : string prop;
  description : string prop;
  expected_body : string prop;
  expected_codes : string prop;
  follow_redirects : bool prop;
  id : string prop;
  interval : float prop;
  method_ : string prop;
  modified_on : string prop;
  path : string prop;
  port : float prop;
  probe_zone : string prop;
  retries : float prop;
  timeout : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_insecure:bool prop ->
  ?consecutive_down:float prop ->
  ?consecutive_up:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?probe_zone:string prop ->
  ?retries:float prop ->
  ?timeout:float prop ->
  ?type_:string prop ->
  account_id:string prop ->
  header:header list ->
  string ->
  t

val make :
  ?allow_insecure:bool prop ->
  ?consecutive_down:float prop ->
  ?consecutive_up:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?probe_zone:string prop ->
  ?retries:float prop ->
  ?timeout:float prop ->
  ?type_:string prop ->
  account_id:string prop ->
  header:header list ->
  string ->
  t Tf_core.resource
