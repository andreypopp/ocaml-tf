(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_task_iam_policy = {
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  task_id : string prop;  (** task_id *)
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
  task_id : string prop;
}

let google_dataplex_task_iam_policy ?id ?location ?project ~lake
    ~policy_data ~task_id __resource_id =
  let __resource_type = "google_dataplex_task_iam_policy" in
  let __resource =
    ({ id; lake; location; policy_data; project; task_id }
      : google_dataplex_task_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       lake = Prop.computed __resource_type __resource_id "lake";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       task_id =
         Prop.computed __resource_type __resource_id "task_id";
     }
      : t)
  in
  __resource_attributes
