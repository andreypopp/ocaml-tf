(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_cron_trigger = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  schedules : string prop list;
      (** Cron expressions to execute the Worker script. *)
  script_name : string prop;
      (** Worker script to target for the schedules. *)
}
[@@deriving yojson_of]
(** Worker Cron Triggers allow users to map a cron expression to a Worker script
using a `ScheduledEvent` listener that enables Workers to be executed on a
schedule. Worker Cron Triggers are ideal for running periodic jobs for
maintenance or calling third-party APIs to collect up-to-date data.
 *)

type t = {
  account_id : string prop;
  id : string prop;
  schedules : string list prop;
  script_name : string prop;
}

let cloudflare_worker_cron_trigger ?id ~account_id ~schedules
    ~script_name __resource_id =
  let __resource_type = "cloudflare_worker_cron_trigger" in
  let __resource =
    ({ account_id; id; schedules; script_name }
      : cloudflare_worker_cron_trigger)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_cron_trigger __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       schedules =
         Prop.computed __resource_type __resource_id "schedules";
       script_name =
         Prop.computed __resource_type __resource_id "script_name";
     }
      : t)
  in
  __resource_attributes
