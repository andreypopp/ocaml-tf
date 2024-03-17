(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secret_manager_secret_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_member__condition *)

type google_secret_manager_secret_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  secret_id : string prop;  (** secret_id *)
  condition : google_secret_manager_secret_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  secret_id : string prop;
}

let google_secret_manager_secret_iam_member ?id ?project ~member
    ~role ~secret_id ~condition __resource_id =
  let __resource_type = "google_secret_manager_secret_iam_member" in
  let __resource =
    ({ id; member; project; role; secret_id; condition }
      : google_secret_manager_secret_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
     }
      : t)
  in
  __resource_attributes
