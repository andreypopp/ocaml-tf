(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_endpoints_service_iam_member__condition *)

type google_endpoints_service_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  service_name : string prop;  (** service_name *)
  condition : google_endpoints_service_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_endpoints_service_iam_member *)

let google_endpoints_service_iam_member ?id ~member ~role
    ~service_name ~condition __resource_id =
  let __resource_type = "google_endpoints_service_iam_member" in
  let __resource = { id; member; role; service_name; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_iam_member __resource);
  ()
