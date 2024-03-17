(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_task_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_binding__condition *)

type google_dataplex_task_iam_binding = {
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  task_id : string prop;  (** task_id *)
  condition : google_dataplex_task_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_binding *)

let google_dataplex_task_iam_binding ?id ?location ?project ~lake
    ~members ~role ~task_id ~condition __resource_id =
  let __resource_type = "google_dataplex_task_iam_binding" in
  let __resource =
    {
      id;
      lake;
      location;
      members;
      project;
      role;
      task_id;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task_iam_binding __resource);
  ()
