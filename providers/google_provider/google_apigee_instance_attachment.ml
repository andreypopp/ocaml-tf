(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_instance_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_instance_attachment__timeouts *)

type google_apigee_instance_attachment = {
  environment : string;  (** The resource ID of the environment. *)
  instance_id : string;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  timeouts : google_apigee_instance_attachment__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_instance_attachment *)

let google_apigee_instance_attachment ?timeouts ~environment
    ~instance_id __resource_id =
  let __resource_type = "google_apigee_instance_attachment" in
  let __resource = { environment; instance_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_instance_attachment __resource);
  ()
