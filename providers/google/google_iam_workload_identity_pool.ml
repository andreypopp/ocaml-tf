(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iam_workload_identity_pool = {
  description : string prop option; [@option]
      (** A description of the pool. Cannot exceed 256 characters. *)
  disabled : bool prop option; [@option]
      (** Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
existing tokens to access resources. If the pool is re-enabled, existing tokens grant
access again. *)
  display_name : string prop option; [@option]
      (** A display name for the pool. Cannot exceed 32 characters. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  workload_identity_pool_id : string prop;
      (** The ID to use for the pool, which becomes the final component of the resource name. This
value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
'gcp-' is reserved for use by Google, and may not be specified. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iam_workload_identity_pool *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_iam_workload_identity_pool ?description ?disabled
    ?display_name ?id ?project ?timeouts ~workload_identity_pool_id
    () : google_iam_workload_identity_pool =
  {
    description;
    disabled;
    display_name;
    id;
    project;
    workload_identity_pool_id;
    timeouts;
  }

type t = {
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  workload_identity_pool_id : string prop;
}

let register ?tf_module ?description ?disabled ?display_name ?id
    ?project ?timeouts ~workload_identity_pool_id __resource_id =
  let __resource_type = "google_iam_workload_identity_pool" in
  let __resource =
    google_iam_workload_identity_pool ?description ?disabled
      ?display_name ?id ?project ?timeouts ~workload_identity_pool_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iam_workload_identity_pool __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       workload_identity_pool_id =
         Prop.computed __resource_type __resource_id
           "workload_identity_pool_id";
     }
      : t)
  in
  __resource_attributes
