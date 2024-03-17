(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_authorized_orgs_desc__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_access_context_manager_authorized_orgs_desc__timeouts *)

type google_access_context_manager_authorized_orgs_desc = {
  asset_type : string option; [@option]
      (** The type of entities that need to use the authorization relationship during
evaluation, such as a device. Valid values are ASSET_TYPE_DEVICE and
ASSET_TYPE_CREDENTIAL_STRENGTH. Possible values: [ASSET_TYPE_DEVICE, ASSET_TYPE_CREDENTIAL_STRENGTH] *)
  authorization_direction : string option; [@option]
      (** The direction of the authorization relationship between this organization
and the organizations listed in the orgs field. The valid values for this
field include the following:

AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
in the organizations listed in the 'orgs' field.

AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the 'orgs'
field to evaluate the traffic in this organization.

For the authorization relationship to take effect, all of the organizations
must authorize and specify the appropriate relationship direction. For
example, if organization A authorized organization B and C to evaluate its
traffic, by specifying AUTHORIZATION_DIRECTION_TO as the authorization
direction, organizations B and C must specify
AUTHORIZATION_DIRECTION_FROM as the authorization direction in their
AuthorizedOrgsDesc resource. Possible values: [AUTHORIZATION_DIRECTION_TO, AUTHORIZATION_DIRECTION_FROM] *)
  authorization_type : string option; [@option]
      (** A granular control type for authorization levels. Valid value is AUTHORIZATION_TYPE_TRUST. Possible values: [AUTHORIZATION_TYPE_TRUST] *)
  id : string option; [@option]  (** id *)
  name : string;
      (** Resource name for the 'AuthorizedOrgsDesc'. Format:
'accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}'.
The 'authorized_orgs_desc' component must begin with a letter, followed by
alphanumeric characters or '_'.
After you create an 'AuthorizedOrgsDesc', you cannot change its 'name'. *)
  orgs : string list option; [@option]
      (** The list of organization ids in this AuthorizedOrgsDesc.
Format: 'organizations/<org_number>'
Example: 'organizations/123456' *)
  parent : string;
      (** Required. Resource name for the access policy which owns this 'AuthorizedOrgsDesc'. *)
  timeouts :
    google_access_context_manager_authorized_orgs_desc__timeouts
    option;
}
[@@deriving yojson_of]
(** google_access_context_manager_authorized_orgs_desc *)

let google_access_context_manager_authorized_orgs_desc ?asset_type
    ?authorization_direction ?authorization_type ?id ?orgs ?timeouts
    ~name ~parent __resource_id =
  let __resource_type =
    "google_access_context_manager_authorized_orgs_desc"
  in
  let __resource =
    {
      asset_type;
      authorization_direction;
      authorization_type;
      id;
      name;
      orgs;
      parent;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_authorized_orgs_desc
       __resource);
  ()
