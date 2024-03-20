(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_worker_cron_trigger ?id ~account_id ~schedules
    ~script_name () : cloudflare_worker_cron_trigger =
  { account_id; id; schedules; script_name }

type t = {
  account_id : string prop;
  id : string prop;
  schedules : string list prop;
  script_name : string prop;
}

let make ?id ~account_id ~schedules ~script_name __id =
  let __type = "cloudflare_worker_cron_trigger" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       schedules = Prop.computed __type __id "schedules";
       script_name = Prop.computed __type __id "script_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_cron_trigger
        (cloudflare_worker_cron_trigger ?id ~account_id ~schedules
           ~script_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~schedules ~script_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~schedules ~script_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
