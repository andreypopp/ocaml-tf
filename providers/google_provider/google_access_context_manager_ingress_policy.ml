(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_ingress_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_access_context_manager_ingress_policy__timeouts *)

type google_access_context_manager_ingress_policy = {
  id : string prop option; [@option]  (** id *)
  ingress_policy_name : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  resource : string prop;
      (** A GCP resource that is inside of the service perimeter. *)
  timeouts :
    google_access_context_manager_ingress_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_ingress_policy *)

let google_access_context_manager_ingress_policy ?id ?timeouts
    ~ingress_policy_name ~resource __resource_id =
  let __resource_type =
    "google_access_context_manager_ingress_policy"
  in
  let __resource = { id; ingress_policy_name; resource; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_ingress_policy
       __resource);
  ()
