(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notifications__slack = {
  channel : string prop;  (** The Slack channel to send alerts to *)
  url : string prop;  (** The webhook URL for Slack *)
}
[@@deriving yojson_of]
(** notifications__slack *)

type notifications = {
  email : string prop list option; [@option]
      (** List of email addresses to sent notifications to *)
  slack : notifications__slack list;
}
[@@deriving yojson_of]
(** The notification settings for a trigger alert. *)

type digitalocean_uptime_alert = {
  check_id : string prop;  (** A unique identifier for a check. *)
  comparison : string prop option; [@option]
      (** The comparison operator used against the alert's threshold. Enum: 'greater_than' 'less_than *)
  name : string prop;
      (** A human-friendly display name for the alert. *)
  period : string prop option; [@option]
      (** Period of time the threshold must be exceeded to trigger the alert. Enum '2m' '3m' '5m' '10m' '15m' '30m' '1h' *)
  threshold : float prop option; [@option]
      (** The threshold at which the alert will enter a trigger state. The specific threshold is dependent on the alert type. *)
  type_ : string prop; [@key "type"]
      (** The type of health check to perform. Enum: 'latency' 'down' 'down_global' 'ssl_expiry' *)
  notifications : notifications list;
}
[@@deriving yojson_of]
(** digitalocean_uptime_alert *)

let notifications__slack ~channel ~url () : notifications__slack =
  { channel; url }

let notifications ?email ~slack () : notifications = { email; slack }

let digitalocean_uptime_alert ?comparison ?period ?threshold
    ~check_id ~name ~type_ ~notifications () :
    digitalocean_uptime_alert =
  {
    check_id;
    comparison;
    name;
    period;
    threshold;
    type_;
    notifications;
  }

type t = {
  check_id : string prop;
  comparison : string prop;
  id : string prop;
  name : string prop;
  period : string prop;
  threshold : float prop;
  type_ : string prop;
}

let make ?comparison ?period ?threshold ~check_id ~name ~type_
    ~notifications __id =
  let __type = "digitalocean_uptime_alert" in
  let __attrs =
    ({
       check_id = Prop.computed __type __id "check_id";
       comparison = Prop.computed __type __id "comparison";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       period = Prop.computed __type __id "period";
       threshold = Prop.computed __type __id "threshold";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_uptime_alert
        (digitalocean_uptime_alert ?comparison ?period ?threshold
           ~check_id ~name ~type_ ~notifications ());
    attrs = __attrs;
  }

let register ?tf_module ?comparison ?period ?threshold ~check_id
    ~name ~type_ ~notifications __id =
  let (r : _ Tf_core.resource) =
    make ?comparison ?period ?threshold ~check_id ~name ~type_
      ~notifications __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
