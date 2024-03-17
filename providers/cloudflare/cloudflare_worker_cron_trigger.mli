(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_worker_cron_trigger

type t = private {
  account_id : string prop;
  id : string prop;
  schedules : string list prop;
  script_name : string prop;
}

val cloudflare_worker_cron_trigger :
  ?id:string prop ->
  account_id:string prop ->
  schedules:string prop list ->
  script_name:string prop ->
  string ->
  t
