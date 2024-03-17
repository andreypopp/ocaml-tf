(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_image_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_image_iam_member__condition *)

type google_compute_image_iam_member = {
  id : string prop option; [@option]  (** id *)
  image : string prop;  (** image *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_compute_image_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_compute_image_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  image : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let google_compute_image_iam_member ?id ?project ~image ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_compute_image_iam_member" in
  let __resource =
    ({ id; image; member; project; role; condition }
      : google_compute_image_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_image_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       image = Prop.computed __resource_type __resource_id "image";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
