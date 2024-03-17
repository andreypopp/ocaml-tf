(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_nat_address__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_nat_address__timeouts *)

type google_apigee_nat_address = {
  instance_id : string;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  name : string;  (** Resource ID of the NAT address. *)
  timeouts : google_apigee_nat_address__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_nat_address *)

let google_apigee_nat_address ?timeouts ~instance_id ~name
    __resource_id =
  let __resource_type = "google_apigee_nat_address" in
  let __resource = { instance_id; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_nat_address __resource);
  ()
