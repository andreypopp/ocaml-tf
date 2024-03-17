(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_topic_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  topic : string prop;
}

let google_pubsub_topic_iam_policy ?id ?project ~policy_data ~topic
    __resource_id =
  let __resource_type = "google_pubsub_topic_iam_policy" in
  let __resource =
    ({ id; policy_data; project; topic }
      : google_pubsub_topic_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       topic = Prop.computed __resource_type __resource_id "topic";
     }
      : t)
  in
  __resource_attributes
