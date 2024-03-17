(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_endpoints_service_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_endpoints_service_iam_binding__condition *)

type google_endpoints_service_iam_binding = {
  members : string list;  (** members *)
  role : string;  (** role *)
  service_name : string;  (** service_name *)
  condition : google_endpoints_service_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_endpoints_service_iam_binding *)

let google_endpoints_service_iam_binding ~members ~role ~service_name
    ~condition __resource_id =
  let __resource_type = "google_endpoints_service_iam_binding" in
  let __resource = { members; role; service_name; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_endpoints_service_iam_binding __resource);
  ()
