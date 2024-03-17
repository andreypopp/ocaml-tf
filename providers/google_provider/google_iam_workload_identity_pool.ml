(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iam_workload_identity_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_iam_workload_identity_pool__timeouts *)

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
  timeouts : google_iam_workload_identity_pool__timeouts option;
}
[@@deriving yojson_of]
(** google_iam_workload_identity_pool *)

let google_iam_workload_identity_pool ?description ?disabled
    ?display_name ?id ?project ?timeouts ~workload_identity_pool_id
    __resource_id =
  let __resource_type = "google_iam_workload_identity_pool" in
  let __resource =
    {
      description;
      disabled;
      display_name;
      id;
      project;
      workload_identity_pool_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iam_workload_identity_pool __resource);
  ()
