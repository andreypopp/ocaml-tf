(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_run_v2_service_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_cloud_run_v2_service_iam_member__condition *)

type google_cloud_run_v2_service_iam_member = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  name : string prop;  (** name *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_cloud_run_v2_service_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_cloud_run_v2_service_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  role : string prop;
}

let google_cloud_run_v2_service_iam_member ?id ?location ?project
    ~member ~name ~role ~condition __resource_id =
  let __resource_type = "google_cloud_run_v2_service_iam_member" in
  let __resource =
    ({ id; location; member; name; project; role; condition }
      : google_cloud_run_v2_service_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_v2_service_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       member = Prop.computed __resource_type __resource_id "member";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
