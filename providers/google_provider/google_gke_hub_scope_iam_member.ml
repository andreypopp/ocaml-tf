(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_scope_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_gke_hub_scope_iam_member__condition *)

type google_gke_hub_scope_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  scope_id : string prop;  (** scope_id *)
  condition : google_gke_hub_scope_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_gke_hub_scope_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  scope_id : string prop;
}

let google_gke_hub_scope_iam_member ?id ?project ~member ~role
    ~scope_id ~condition __resource_id =
  let __resource_type = "google_gke_hub_scope_iam_member" in
  let __resource =
    ({ id; member; project; role; scope_id; condition }
      : google_gke_hub_scope_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_scope_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       scope_id =
         Prop.computed __resource_type __resource_id "scope_id";
     }
      : t)
  in
  __resource_attributes
