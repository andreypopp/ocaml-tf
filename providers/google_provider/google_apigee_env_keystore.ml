(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_env_keystore__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_env_keystore__timeouts *)

type google_apigee_env_keystore = {
  env_id : string;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  name : string option; [@option]
      (** The name of the newly created keystore. *)
  timeouts : google_apigee_env_keystore__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_env_keystore *)

let google_apigee_env_keystore ?name ?timeouts ~env_id __resource_id
    =
  let __resource_type = "google_apigee_env_keystore" in
  let __resource = { env_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_env_keystore __resource);
  ()
