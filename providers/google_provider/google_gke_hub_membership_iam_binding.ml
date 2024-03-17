(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_membership_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_binding__condition *)

type google_gke_hub_membership_iam_binding = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  membership_id : string prop;  (** membership_id *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_gke_hub_membership_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_gke_hub_membership_iam_binding *)

let google_gke_hub_membership_iam_binding ?id ?location ?project
    ~members ~membership_id ~role ~condition __resource_id =
  let __resource_type = "google_gke_hub_membership_iam_binding" in
  let __resource =
    {
      id;
      location;
      members;
      membership_id;
      project;
      role;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership_iam_binding __resource);
  ()
