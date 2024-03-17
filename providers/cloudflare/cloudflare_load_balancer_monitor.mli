(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_load_balancer_monitor__header
type cloudflare_load_balancer_monitor

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
  header:cloudflare_load_balancer_monitor__header list ->
  string ->
  t
