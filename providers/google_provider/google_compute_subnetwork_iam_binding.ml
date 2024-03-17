(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_subnetwork_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_subnetwork_iam_binding__condition *)

type google_compute_subnetwork_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  subnetwork : string prop;  (** subnetwork *)
  condition : google_compute_subnetwork_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_compute_subnetwork_iam_binding *)

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
  subnetwork : string prop;
}

let google_compute_subnetwork_iam_binding ?id ?project ?region
    ~members ~role ~subnetwork ~condition __resource_id =
  let __resource_type = "google_compute_subnetwork_iam_binding" in
  let __resource =
    ({ id; members; project; region; role; subnetwork; condition }
      : google_compute_subnetwork_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_subnetwork_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       role = Prop.computed __resource_type __resource_id "role";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
     }
      : t)
  in
  __resource_attributes
