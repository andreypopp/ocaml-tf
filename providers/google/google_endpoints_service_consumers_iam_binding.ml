(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_consumers_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_binding__condition *)

type google_endpoints_service_consumers_iam_binding = {
  consumer_project : string prop;  (** consumer_project *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  service_name : string prop;  (** service_name *)
  condition :
    google_endpoints_service_consumers_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_binding *)

type t = {
  consumer_project : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
  service_name : string prop;
}

let google_endpoints_service_consumers_iam_binding ?id
    ~consumer_project ~members ~role ~service_name ~condition
    __resource_id =
  let __resource_type =
    "google_endpoints_service_consumers_iam_binding"
  in
  let __resource =
    ({ consumer_project; id; members; role; service_name; condition }
      : google_endpoints_service_consumers_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_consumers_iam_binding
       __resource);
  let __resource_attributes =
    ({
       consumer_project =
         Prop.computed __resource_type __resource_id
           "consumer_project";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       role = Prop.computed __resource_type __resource_id "role";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
     }
      : t)
  in
  __resource_attributes
