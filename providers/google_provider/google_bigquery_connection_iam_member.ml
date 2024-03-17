(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_connection_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_bigquery_connection_iam_member__condition *)

type google_bigquery_connection_iam_member = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_bigquery_connection_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_bigquery_connection_iam_member *)

type t = {
  connection_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let google_bigquery_connection_iam_member ?id ?location ?project
    ~connection_id ~member ~role ~condition __resource_id =
  let __resource_type = "google_bigquery_connection_iam_member" in
  let __resource =
    ({
       connection_id;
       id;
       location;
       member;
       project;
       role;
       condition;
     }
      : google_bigquery_connection_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_connection_iam_member __resource);
  let __resource_attributes =
    ({
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
