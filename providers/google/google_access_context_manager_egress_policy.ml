(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_egress_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_access_context_manager_egress_policy__timeouts *)

type google_access_context_manager_egress_policy = {
  egress_policy_name : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  id : string prop option; [@option]  (** id *)
  resource : string prop;
      (** A GCP resource that is inside of the service perimeter. *)
  timeouts :
    google_access_context_manager_egress_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_egress_policy *)

type t = {
  egress_policy_name : string prop;
  id : string prop;
  resource : string prop;
}

let google_access_context_manager_egress_policy ?id ?timeouts
    ~egress_policy_name ~resource __resource_id =
  let __resource_type =
    "google_access_context_manager_egress_policy"
  in
  let __resource =
    ({ egress_policy_name; id; resource; timeouts }
      : google_access_context_manager_egress_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_egress_policy __resource);
  let __resource_attributes =
    ({
       egress_policy_name =
         Prop.computed __resource_type __resource_id
           "egress_policy_name";
       id = Prop.computed __resource_type __resource_id "id";
       resource =
         Prop.computed __resource_type __resource_id "resource";
     }
      : t)
  in
  __resource_attributes
