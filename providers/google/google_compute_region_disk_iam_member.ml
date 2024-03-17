(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_disk_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_region_disk_iam_member__condition *)

type google_compute_region_disk_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  name : string prop;  (** name *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  condition : google_compute_region_disk_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_compute_region_disk_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

let google_compute_region_disk_iam_member ?id ?project ?region
    ~member ~name ~role ~condition __resource_id =
  let __resource_type = "google_compute_region_disk_iam_member" in
  let __resource =
    ({ id; member; name; project; region; role; condition }
      : google_compute_region_disk_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_disk_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
