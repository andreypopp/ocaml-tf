(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_web_backend_service_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_iap_web_backend_service_iam_member__condition *)

type google_iap_web_backend_service_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  web_backend_service : string prop;  (** web_backend_service *)
  condition :
    google_iap_web_backend_service_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_iap_web_backend_service_iam_member *)

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  web_backend_service : string prop;
}

let google_iap_web_backend_service_iam_member ?id ?project ~member
    ~role ~web_backend_service ~condition __resource_id =
  let __resource_type =
    "google_iap_web_backend_service_iam_member"
  in
  let __resource =
    ({ id; member; project; role; web_backend_service; condition }
      : google_iap_web_backend_service_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_backend_service_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       web_backend_service =
         Prop.computed __resource_type __resource_id
           "web_backend_service";
     }
      : t)
  in
  __resource_attributes
