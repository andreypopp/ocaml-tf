(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_envgroup_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_envgroup_attachment__timeouts *)

type google_apigee_envgroup_attachment = {
  envgroup_id : string;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/envgroups/{{envgroup_name}}'. *)
  environment : string;  (** The resource ID of the environment. *)
  timeouts : google_apigee_envgroup_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_envgroup_attachment *)

let google_apigee_envgroup_attachment ?timeouts ~envgroup_id
    ~environment __resource_id =
  let __resource_type = "google_apigee_envgroup_attachment" in
  let __resource = { envgroup_id; environment; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_envgroup_attachment __resource);
  ()