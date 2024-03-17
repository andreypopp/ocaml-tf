(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_instance_iam_member__condition *)

type google_compute_instance_iam_member = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  zone : string prop option; [@option]  (** zone *)
  condition : google_compute_instance_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_compute_instance_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  instance_name : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

let google_compute_instance_iam_member ?id ?project ?zone
    ~instance_name ~member ~role ~condition __resource_id =
  let __resource_type = "google_compute_instance_iam_member" in
  let __resource =
    ({ id; instance_name; member; project; role; zone; condition }
      : google_compute_instance_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
