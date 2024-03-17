(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_consumers_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_member__condition *)

type google_endpoints_service_consumers_iam_member = {
  consumer_project : string;  (** consumer_project *)
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  role : string;  (** role *)
  service_name : string;  (** service_name *)
  condition :
    google_endpoints_service_consumers_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_endpoints_service_consumers_iam_member *)

let google_endpoints_service_consumers_iam_member ?id
    ~consumer_project ~member ~role ~service_name ~condition
    __resource_id =
  let __resource_type =
    "google_endpoints_service_consumers_iam_member"
  in
  let __resource =
    { consumer_project; id; member; role; service_name; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_consumers_iam_member
       __resource);
  ()
