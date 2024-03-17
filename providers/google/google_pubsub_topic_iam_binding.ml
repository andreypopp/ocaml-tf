(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_topic_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_binding__condition *)

type google_pubsub_topic_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  topic : string prop;  (** topic *)
  condition : google_pubsub_topic_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_binding *)

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  topic : string prop;
}

let google_pubsub_topic_iam_binding ?id ?project ~members ~role
    ~topic ~condition __resource_id =
  let __resource_type = "google_pubsub_topic_iam_binding" in
  let __resource =
    ({ id; members; project; role; topic; condition }
      : google_pubsub_topic_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       topic = Prop.computed __resource_type __resource_id "topic";
     }
      : t)
  in
  __resource_attributes
