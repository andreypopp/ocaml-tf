(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_entry_group_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group_iam_member__condition *)

type google_data_catalog_entry_group_iam_member = {
  entry_group : string prop;  (** entry_group *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  condition :
    google_data_catalog_entry_group_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group_iam_member *)

type t = {
  entry_group : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
}

let google_data_catalog_entry_group_iam_member ?id ?project ?region
    ~entry_group ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_data_catalog_entry_group_iam_member"
  in
  let __resource =
    ({ entry_group; id; member; project; region; role; condition }
      : google_data_catalog_entry_group_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_entry_group_iam_member __resource);
  let __resource_attributes =
    ({
       entry_group =
         Prop.computed __resource_type __resource_id "entry_group";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
