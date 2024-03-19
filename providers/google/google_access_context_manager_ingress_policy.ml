(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_ingress_policy = {
  id : string prop option; [@option]  (** id *)
  ingress_policy_name : string prop;
      (** The name of the Service Perimeter to add this resource to. *)
  resource : string prop;
      (** A GCP resource that is inside of the service perimeter. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_ingress_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_access_context_manager_ingress_policy ?id ?timeouts
    ~ingress_policy_name ~resource () :
    google_access_context_manager_ingress_policy =
  { id; ingress_policy_name; resource; timeouts }

type t = {
  id : string prop;
  ingress_policy_name : string prop;
  resource : string prop;
}

let register ?tf_module ?id ?timeouts ~ingress_policy_name ~resource
    __resource_id =
  let __resource_type =
    "google_access_context_manager_ingress_policy"
  in
  let __resource =
    google_access_context_manager_ingress_policy ?id ?timeouts
      ~ingress_policy_name ~resource ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_ingress_policy
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ingress_policy_name =
         Prop.computed __resource_type __resource_id
           "ingress_policy_name";
       resource =
         Prop.computed __resource_type __resource_id "resource";
     }
      : t)
  in
  __resource_attributes
