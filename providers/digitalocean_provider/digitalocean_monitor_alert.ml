(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_monitor_alert__alerts__slack = {
  channel : string;  (** The Slack channel to send alerts to *)
  url : string;  (** The webhook URL for Slack *)
}
[@@deriving yojson_of]
(** digitalocean_monitor_alert__alerts__slack *)

type digitalocean_monitor_alert__alerts = {
  email : string list option; [@option]
      (** List of email addresses to sent notifications to *)
  slack : digitalocean_monitor_alert__alerts__slack list;
}
[@@deriving yojson_of]
(** List with details how to notify about the alert. Support for Slack or email. *)

type digitalocean_monitor_alert = {
  compare : string;  (** The comparison operator to use for value *)
  description : string;  (** Description of the alert policy *)
  enabled : bool option; [@option]  (** enabled *)
  entities : string list option; [@option]
      (** The droplets to apply the alert policy to *)
  id : string option; [@option]  (** id *)
  tags : string list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
  window : string;  (** window *)
  alerts : digitalocean_monitor_alert__alerts list;
}
[@@deriving yojson_of]
(** digitalocean_monitor_alert *)

let digitalocean_monitor_alert ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts __resource_id =
  let __resource_type = "digitalocean_monitor_alert" in
  let __resource =
    {
      compare;
      description;
      enabled;
      entities;
      id;
      tags;
      type_;
      value;
      window;
      alerts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_monitor_alert __resource);
  ()
