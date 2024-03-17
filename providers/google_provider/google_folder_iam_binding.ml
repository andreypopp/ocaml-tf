(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_folder_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_folder_iam_binding__condition *)

type google_folder_iam_binding = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : google_folder_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_folder_iam_binding *)

let google_folder_iam_binding ?id ~folder ~members ~role ~condition
    __resource_id =
  let __resource_type = "google_folder_iam_binding" in
  let __resource = { folder; id; members; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_binding __resource);
  ()
