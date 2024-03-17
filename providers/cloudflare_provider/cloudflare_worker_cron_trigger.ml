(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_cron_trigger = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  id : string option; [@option]  (** id *)
  schedules : string list;
      (** Cron expressions to execute the Worker script. *)
  script_name : string;
      (** Worker script to target for the schedules. *)
}
[@@deriving yojson_of]
(** Worker Cron Triggers allow users to map a cron expression to a Worker script
using a `ScheduledEvent` listener that enables Workers to be executed on a
schedule. Worker Cron Triggers are ideal for running periodic jobs for
maintenance or calling third-party APIs to collect up-to-date data.
 *)

let cloudflare_worker_cron_trigger ?id ~account_id ~schedules
    ~script_name __resource_id =
  let __resource_type = "cloudflare_worker_cron_trigger" in
  let __resource = { account_id; id; schedules; script_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_cron_trigger __resource);
  ()
