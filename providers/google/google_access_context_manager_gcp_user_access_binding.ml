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

type google_access_context_manager_gcp_user_access_binding = {
  access_levels : string prop list;
      (** Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: accessPolicies/9522/accessLevels/device_trusted *)
  group_key : string prop;
      (** Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See id in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: 01d520gv4vjcrht *)
  id : string prop option; [@option]  (** id *)
  organization_id : string prop;
      (** Required. ID of the parent organization. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_gcp_user_access_binding *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_gcp_user_access_binding ?id
    ?timeouts ~access_levels ~group_key ~organization_id () :
    google_access_context_manager_gcp_user_access_binding =
  { access_levels; group_key; id; organization_id; timeouts }

type t = {
  access_levels : string list prop;
  group_key : string prop;
  id : string prop;
  name : string prop;
  organization_id : string prop;
}

let register ?tf_module ?id ?timeouts ~access_levels ~group_key
    ~organization_id __resource_id =
  let __resource_type =
    "google_access_context_manager_gcp_user_access_binding"
  in
  let __resource =
    google_access_context_manager_gcp_user_access_binding ?id
      ?timeouts ~access_levels ~group_key ~organization_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_gcp_user_access_binding
       __resource);
  let __resource_attributes =
    ({
       access_levels =
         Prop.computed __resource_type __resource_id "access_levels";
       group_key =
         Prop.computed __resource_type __resource_id "group_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       organization_id =
         Prop.computed __resource_type __resource_id
           "organization_id";
     }
      : t)
  in
  __resource_attributes
