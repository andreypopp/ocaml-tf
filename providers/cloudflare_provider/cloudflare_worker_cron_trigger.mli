(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_worker_cron_trigger

val cloudflare_worker_cron_trigger :
  ?id:string prop ->
  account_id:string prop ->
  schedules:string prop list ->
  script_name:string prop ->
  string ->
  unit
