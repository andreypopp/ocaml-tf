(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_uptime_alert__notifications__slack = {
  channel : string;  (** The Slack channel to send alerts to *)
  url : string;  (** The webhook URL for Slack *)
}
[@@deriving yojson_of]
(** digitalocean_uptime_alert__notifications__slack *)

type digitalocean_uptime_alert__notifications = {
  email : string list option; [@option]
      (** List of email addresses to sent notifications to *)
  slack : digitalocean_uptime_alert__notifications__slack list;
}
[@@deriving yojson_of]
(** The notification settings for a trigger alert. *)

type digitalocean_uptime_alert = {
  check_id : string;  (** A unique identifier for a check. *)
  comparison : string option; [@option]
      (** The comparison operator used against the alert's threshold. Enum: 'greater_than' 'less_than *)
  name : string;  (** A human-friendly display name for the alert. *)
  period : string option; [@option]
      (** Period of time the threshold must be exceeded to trigger the alert. Enum '2m' '3m' '5m' '10m' '15m' '30m' '1h' *)
  threshold : float option; [@option]
      (** The threshold at which the alert will enter a trigger state. The specific threshold is dependent on the alert type. *)
  type_ : string; [@key "type"]
      (** The type of health check to perform. Enum: 'latency' 'down' 'down_global' 'ssl_expiry' *)
  notifications : digitalocean_uptime_alert__notifications list;
}
[@@deriving yojson_of]
(** digitalocean_uptime_alert *)

let digitalocean_uptime_alert ?comparison ?period ?threshold
    ~check_id ~name ~type_ ~notifications __resource_id =
  let __resource_type = "digitalocean_uptime_alert" in
  let __resource =
    {
      check_id;
      comparison;
      name;
      period;
      threshold;
      type_;
      notifications;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_uptime_alert __resource);
  ()
