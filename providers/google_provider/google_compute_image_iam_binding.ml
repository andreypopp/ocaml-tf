(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_image_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_image_iam_binding__condition *)

type google_compute_image_iam_binding = {
  id : string option; [@option]  (** id *)
  image : string;  (** image *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition : google_compute_image_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_compute_image_iam_binding *)

let google_compute_image_iam_binding ?id ?project ~image ~members
    ~role ~condition __resource_id =
  let __resource_type = "google_compute_image_iam_binding" in
  let __resource =
    { id; image; members; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_image_iam_binding __resource);
  ()
