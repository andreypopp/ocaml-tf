(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_config = {
  delivery_requirement : string prop;
      (** When this subscription should send messages to subscribers relative to messages persistence in storage. Possible values: [DELIVER_IMMEDIATELY, DELIVER_AFTER_STORED, DELIVERY_REQUIREMENT_UNSPECIFIED] *)
}
[@@deriving yojson_of]
(** The settings for this subscription's message delivery. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_pubsub_lite_subscription = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the subscription. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the pubsub lite topic. *)
  topic : string prop;  (** A reference to a Topic resource. *)
  zone : string prop option; [@option]
      (** The zone of the pubsub lite topic. *)
  delivery_config : delivery_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_lite_subscription *)

let delivery_config ~delivery_requirement () : delivery_config =
  { delivery_requirement }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_lite_subscription ?id ?project ?region ?zone
    ?timeouts ~name ~topic ~delivery_config () :
    google_pubsub_lite_subscription =
  {
    id;
    name;
    project;
    region;
    topic;
    zone;
    delivery_config;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  topic : string prop;
  zone : string prop;
}

let make ?id ?project ?region ?zone ?timeouts ~name ~topic
    ~delivery_config __id =
  let __type = "google_pubsub_lite_subscription" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       topic = Prop.computed __type __id "topic";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_lite_subscription
        (google_pubsub_lite_subscription ?id ?project ?region ?zone
           ?timeouts ~name ~topic ~delivery_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?zone ?timeouts ~name
    ~topic ~delivery_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?zone ?timeouts ~name ~topic
      ~delivery_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
