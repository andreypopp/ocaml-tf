(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_consumers_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_member__condition *)

type google_endpoints_service_consumers_iam_member = {
  consumer_project : string prop;  (** consumer_project *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  service_name : string prop;  (** service_name *)
  condition :
    google_endpoints_service_consumers_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_member *)

type t = {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_name : string prop;
}

let google_endpoints_service_consumers_iam_member ?id
    ~consumer_project ~member ~role ~service_name ~condition
    __resource_id =
  let __resource_type =
    "google_endpoints_service_consumers_iam_member"
  in
  let __resource =
    ({ consumer_project; id; member; role; service_name; condition }
      : google_endpoints_service_consumers_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_consumers_iam_member
       __resource);
  let __resource_attributes =
    ({
       consumer_project =
         Prop.computed __resource_type __resource_id
           "consumer_project";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
     }
      : t)
  in
  __resource_attributes
