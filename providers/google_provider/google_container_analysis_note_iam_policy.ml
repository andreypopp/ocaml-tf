(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_analysis_note_iam_policy = {
  id : string prop option; [@option]  (** id *)
  note : string prop;  (** note *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_policy *)

let google_container_analysis_note_iam_policy ?id ?project ~note
    ~policy_data __resource_id =
  let __resource_type =
    "google_container_analysis_note_iam_policy"
  in
  let __resource = { id; note; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_analysis_note_iam_policy __resource);
  ()
