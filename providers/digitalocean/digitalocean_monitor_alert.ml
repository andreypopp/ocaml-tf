(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type alerts__slack = {
  channel : string prop;  (** The Slack channel to send alerts to *)
  url : string prop;  (** The webhook URL for Slack *)
}
[@@deriving yojson_of]
(** alerts__slack *)

type alerts = {
  email : string prop list option; [@option]
      (** List of email addresses to sent notifications to *)
  slack : alerts__slack list;
}
[@@deriving yojson_of]
(** List with details how to notify about the alert. Support for Slack or email. *)

type digitalocean_monitor_alert = {
  compare : string prop;
      (** The comparison operator to use for value *)
  description : string prop;  (** Description of the alert policy *)
  enabled : bool prop option; [@option]  (** enabled *)
  entities : string prop list option; [@option]
      (** The droplets to apply the alert policy to *)
  id : string prop option; [@option]  (** id *)
  tags : string prop list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
  window : string prop;  (** window *)
  alerts : alerts list;
}
[@@deriving yojson_of]
(** digitalocean_monitor_alert *)

let alerts__slack ~channel ~url () : alerts__slack = { channel; url }
let alerts ?email ~slack () : alerts = { email; slack }

let digitalocean_monitor_alert ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts () :
    digitalocean_monitor_alert =
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

type t = {
  compare : string prop;
  description : string prop;
  enabled : bool prop;
  entities : string list prop;
  id : string prop;
  tags : string list prop;
  type_ : string prop;
  uuid : string prop;
  value : float prop;
  window : string prop;
}

let register ?tf_module ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts __resource_id =
  let __resource_type = "digitalocean_monitor_alert" in
  let __resource =
    digitalocean_monitor_alert ?enabled ?entities ?id ?tags ~compare
      ~description ~type_ ~value ~window ~alerts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_monitor_alert __resource);
  let __resource_attributes =
    ({
       compare =
         Prop.computed __resource_type __resource_id "compare";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       entities =
         Prop.computed __resource_type __resource_id "entities";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
       uuid = Prop.computed __resource_type __resource_id "uuid";
       value = Prop.computed __resource_type __resource_id "value";
       window = Prop.computed __resource_type __resource_id "window";
     }
      : t)
  in
  __resource_attributes
