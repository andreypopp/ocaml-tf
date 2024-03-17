(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_analysis_note_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_member__condition *)

type google_container_analysis_note_iam_member = {
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  note : string;  (** note *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition :
    google_container_analysis_note_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_container_analysis_note_iam_member *)

let google_container_analysis_note_iam_member ?id ?project ~member
    ~note ~role ~condition __resource_id =
  let __resource_type =
    "google_container_analysis_note_iam_member"
  in
  let __resource = { id; member; note; project; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_analysis_note_iam_member __resource);
  ()
