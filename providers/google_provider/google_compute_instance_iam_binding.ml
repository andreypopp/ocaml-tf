(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_instance_iam_binding__condition *)

type google_compute_instance_iam_binding = {
  id : string option; [@option]  (** id *)
  instance_name : string;  (** instance_name *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  zone : string option; [@option]  (** zone *)
  condition : google_compute_instance_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_compute_instance_iam_binding *)

let google_compute_instance_iam_binding ?id ?project ?zone
    ~instance_name ~members ~role ~condition __resource_id =
  let __resource_type = "google_compute_instance_iam_binding" in
  let __resource =
    { id; instance_name; members; project; role; zone; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_iam_binding __resource);
  ()
