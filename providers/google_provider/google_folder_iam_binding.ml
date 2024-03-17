(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_folder_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_folder_iam_binding__condition *)

type google_folder_iam_binding = {
  folder : string;  (** folder *)
  members : string list;  (** members *)
  role : string;  (** role *)
  condition : google_folder_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_folder_iam_binding *)

let google_folder_iam_binding ~folder ~members ~role ~condition
    __resource_id =
  let __resource_type = "google_folder_iam_binding" in
  let __resource = { folder; members; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_binding __resource);
  ()
