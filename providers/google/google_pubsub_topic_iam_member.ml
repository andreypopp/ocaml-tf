(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_pubsub_topic_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  topic : string prop;  (** topic *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_pubsub_topic_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_pubsub_topic_iam_member ?id ?project ~member ~role ~topic
    ~condition () : google_pubsub_topic_iam_member =
  { id; member; project; role; topic; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  topic : string prop;
}

let register ?tf_module ?id ?project ~member ~role ~topic ~condition
    __resource_id =
  let __resource_type = "google_pubsub_topic_iam_member" in
  let __resource =
    google_pubsub_topic_iam_member ?id ?project ~member ~role ~topic
      ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       topic = Prop.computed __resource_type __resource_id "topic";
     }
      : t)
  in
  __resource_attributes
