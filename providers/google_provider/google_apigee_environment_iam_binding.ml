(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_environment_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_binding__condition *)

type google_apigee_environment_iam_binding = {
  env_id : string;  (** env_id *)
  id : string option; [@option]  (** id *)
  members : string list;  (** members *)
  org_id : string;  (** org_id *)
  role : string;  (** role *)
  condition : google_apigee_environment_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_binding *)

let google_apigee_environment_iam_binding ?id ~env_id ~members
    ~org_id ~role ~condition __resource_id =
  let __resource_type = "google_apigee_environment_iam_binding" in
  let __resource =
    { env_id; id; members; org_id; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment_iam_binding __resource);
  ()
