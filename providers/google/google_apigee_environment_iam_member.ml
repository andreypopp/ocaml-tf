(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_environment_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_member__condition *)

type google_apigee_environment_iam_member = {
  env_id : string prop;  (** env_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  org_id : string prop;  (** org_id *)
  role : string prop;  (** role *)
  condition : google_apigee_environment_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_member *)

type t = {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  org_id : string prop;
  role : string prop;
}

let google_apigee_environment_iam_member ?id ~env_id ~member ~org_id
    ~role ~condition __resource_id =
  let __resource_type = "google_apigee_environment_iam_member" in
  let __resource =
    ({ env_id; id; member; org_id; role; condition }
      : google_apigee_environment_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment_iam_member __resource);
  let __resource_attributes =
    ({
       env_id = Prop.computed __resource_type __resource_id "env_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
