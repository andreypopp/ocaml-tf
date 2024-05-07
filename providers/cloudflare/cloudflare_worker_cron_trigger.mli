(** Worker Cron Triggers allow users to map a cron expression to a Worker script
using a `ScheduledEvent` listener that enables Workers to be executed on a
schedule. Worker Cron Triggers are ideal for running periodic jobs for
maintenance or calling third-party APIs to collect up-to-date data.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_worker_cron_trigger

val cloudflare_worker_cron_trigger :
  ?id:string prop ->
  account_id:string prop ->
  schedules:string prop list ->
  script_name:string prop ->
  unit ->
  cloudflare_worker_cron_trigger

val yojson_of_cloudflare_worker_cron_trigger :
  cloudflare_worker_cron_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  schedules : string list prop;
  script_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  schedules:string prop list ->
  script_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  schedules:string prop list ->
  script_name:string prop ->
  string ->
  t Tf_core.resource
