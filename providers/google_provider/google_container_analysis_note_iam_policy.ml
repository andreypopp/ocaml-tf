(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_analysis_note_iam_policy = {
  note : string;  (** note *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_policy *)

let google_container_analysis_note_iam_policy ~note ~policy_data
    __resource_id =
  let __resource_type =
    "google_container_analysis_note_iam_policy"
  in
  let __resource = { note; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_analysis_note_iam_policy __resource);
  ()
