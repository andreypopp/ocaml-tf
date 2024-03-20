(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_pubsub_topic_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_policy *)

let google_pubsub_topic_iam_policy ?id ?project ~policy_data ~topic
    () : google_pubsub_topic_iam_policy =
  { id; policy_data; project; topic }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  topic : string prop;
}

let make ?id ?project ~policy_data ~topic __id =
  let __type = "google_pubsub_topic_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       topic = Prop.computed __type __id "topic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_topic_iam_policy
        (google_pubsub_topic_iam_policy ?id ?project ~policy_data
           ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~policy_data ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~policy_data ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
