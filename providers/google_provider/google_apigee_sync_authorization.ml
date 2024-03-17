(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_sync_authorization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_sync_authorization__timeouts *)

type google_apigee_sync_authorization = {
  id : string option; [@option]  (** id *)
  identities : string list;
      (** Array of service accounts to grant access to control plane resources, each specified using the following format: 'serviceAccount:service-account-name'.

The 'service-account-name' is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com

You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.

The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts). *)
  name : string;  (** Name of the Apigee organization. *)
  timeouts : google_apigee_sync_authorization__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sync_authorization *)

let google_apigee_sync_authorization ?id ?timeouts ~identities ~name
    __resource_id =
  let __resource_type = "google_apigee_sync_authorization" in
  let __resource = { id; identities; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sync_authorization __resource);
  ()
