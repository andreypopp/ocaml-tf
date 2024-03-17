(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_membership_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_binding__condition *)

type google_gke_hub_membership_iam_binding = {
  members : string list;  (** members *)
  membership_id : string;  (** membership_id *)
  role : string;  (** role *)
  condition : google_gke_hub_membership_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_binding *)

let google_gke_hub_membership_iam_binding ~members ~membership_id
    ~role ~condition __resource_id =
  let __resource_type = "google_gke_hub_membership_iam_binding" in
  let __resource = { members; membership_id; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership_iam_binding __resource);
  ()
