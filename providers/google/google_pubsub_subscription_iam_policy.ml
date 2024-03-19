(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_subscription_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  subscription : string prop;  (** subscription *)
}
[@@deriving yojson_of]
(** google_pubsub_subscription_iam_policy *)

let google_pubsub_subscription_iam_policy ?id ?project ~policy_data
    ~subscription () : google_pubsub_subscription_iam_policy =
  { id; policy_data; project; subscription }

type t = {
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  subscription : string prop;
}

let register ?tf_module ?id ?project ~policy_data ~subscription
    __resource_id =
  let __resource_type = "google_pubsub_subscription_iam_policy" in
  let __resource =
    google_pubsub_subscription_iam_policy ?id ?project ~policy_data
      ~subscription ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_subscription_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       subscription =
         Prop.computed __resource_type __resource_id "subscription";
     }
      : t)
  in
  __resource_attributes
