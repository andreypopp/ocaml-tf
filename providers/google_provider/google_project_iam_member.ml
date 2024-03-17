(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_project_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_project_iam_member__condition *)

type google_project_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop;  (** project *)
  role : string prop;  (** role *)
  condition : google_project_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_project_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let google_project_iam_member ?id ~member ~project ~role ~condition
    __resource_id =
  let __resource_type = "google_project_iam_member" in
  let __resource =
    ({ id; member; project; role; condition }
      : google_project_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_project_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
