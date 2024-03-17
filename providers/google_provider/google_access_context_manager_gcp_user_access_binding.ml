(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_access_context_manager_gcp_user_access_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_gcp_user_access_binding__timeouts *)

type google_access_context_manager_gcp_user_access_binding = {
  access_levels : string list;
      (** Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: accessPolicies/9522/accessLevels/device_trusted *)
  group_key : string;
      (** Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See id in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: 01d520gv4vjcrht *)
  organization_id : string;
      (** Required. ID of the parent organization. *)
  timeouts :
    google_access_context_manager_gcp_user_access_binding__timeouts
    option;
}
[@@deriving yojson_of]
(** google_access_context_manager_gcp_user_access_binding *)

let google_access_context_manager_gcp_user_access_binding ?timeouts
    ~access_levels ~group_key ~organization_id __resource_id =
  let __resource_type =
    "google_access_context_manager_gcp_user_access_binding"
  in
  let __resource =
    { access_levels; group_key; organization_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_gcp_user_access_binding
       __resource);
  ()
