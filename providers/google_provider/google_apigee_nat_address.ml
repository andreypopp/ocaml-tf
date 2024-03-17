(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_nat_address__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_apigee_nat_address__timeouts *)

type google_apigee_nat_address = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;
      (** The Apigee instance associated with the Apigee environment,
in the format 'organizations/{{org_name}}/instances/{{instance_name}}'. *)
  name : string prop;  (** Resource ID of the NAT address. *)
  timeouts : google_apigee_nat_address__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_nat_address *)

type t = {
  id : string prop;
  instance_id : string prop;
  ip_address : string prop;
  name : string prop;
  state : string prop;
}

let google_apigee_nat_address ?id ?timeouts ~instance_id ~name
    __resource_id =
  let __resource_type = "google_apigee_nat_address" in
  let __resource =
    ({ id; instance_id; name; timeouts } : google_apigee_nat_address)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_nat_address __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       name = Prop.computed __resource_type __resource_id "name";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
