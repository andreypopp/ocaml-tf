(** Standalone Health Checks provide a way to monitor origin servers
without needing a Cloudflare Load Balancer.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type header

val header :
  header:string prop -> values:string prop list -> unit -> header

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type cloudflare_healthcheck

val cloudflare_healthcheck :
  ?allow_insecure:bool prop ->
  ?check_regions:string prop list ->
  ?consecutive_fails:float prop ->
  ?consecutive_successes:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop list ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?retries:float prop ->
  ?suspended:bool prop ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  address:string prop ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  header:header list ->
  unit ->
  cloudflare_healthcheck

val yojson_of_cloudflare_healthcheck : cloudflare_healthcheck -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address : string prop;
  allow_insecure : bool prop;
  check_regions : string list prop;
  consecutive_fails : float prop;
  consecutive_successes : float prop;
  created_on : string prop;
  description : string prop;
  expected_body : string prop;
  expected_codes : string list prop;
  follow_redirects : bool prop;
  id : string prop;
  interval : float prop;
  method_ : string prop;
  modified_on : string prop;
  name : string prop;
  path : string prop;
  port : float prop;
  retries : float prop;
  suspended : bool prop;
  timeout : float prop;
  type_ : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_insecure:bool prop ->
  ?check_regions:string prop list ->
  ?consecutive_fails:float prop ->
  ?consecutive_successes:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop list ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?retries:float prop ->
  ?suspended:bool prop ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  address:string prop ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  header:header list ->
  string ->
  t

val make :
  ?allow_insecure:bool prop ->
  ?check_regions:string prop list ->
  ?consecutive_fails:float prop ->
  ?consecutive_successes:float prop ->
  ?description:string prop ->
  ?expected_body:string prop ->
  ?expected_codes:string prop list ->
  ?follow_redirects:bool prop ->
  ?id:string prop ->
  ?interval:float prop ->
  ?method_:string prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?retries:float prop ->
  ?suspended:bool prop ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  address:string prop ->
  name:string prop ->
  type_:string prop ->
  zone_id:string prop ->
  header:header list ->
  string ->
  t Tf_core.resource
