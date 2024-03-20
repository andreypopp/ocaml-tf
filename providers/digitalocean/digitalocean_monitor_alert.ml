(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enabled ?entities ?id ?tags ~compare ~description ~type_
    ~value ~window ~alerts __id =
  let __type = "digitalocean_monitor_alert" in
  let __attrs =
    ({
       compare = Prop.computed __type __id "compare";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       entities = Prop.computed __type __id "entities";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       uuid = Prop.computed __type __id "uuid";
       value = Prop.computed __type __id "value";
       window = Prop.computed __type __id "window";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_monitor_alert
        (digitalocean_monitor_alert ?enabled ?entities ?id ?tags
           ~compare ~description ~type_ ~value ~window ~alerts ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?entities ?id ?tags ~compare
    ~description ~type_ ~value ~window ~alerts __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?entities ?id ?tags ~compare ~description ~type_
      ~value ~window ~alerts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
