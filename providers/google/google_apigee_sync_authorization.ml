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

type google_apigee_sync_authorization = {
  id : string prop option; [@option]  (** id *)
  identities : string prop list;
      (** Array of service accounts to grant access to control plane resources, each specified using the following format: 'serviceAccount:service-account-name'.

The 'service-account-name' is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com

You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.

The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts). *)
  name : string prop;  (** Name of the Apigee organization. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sync_authorization *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sync_authorization ?id ?timeouts ~identities ~name
    () : google_apigee_sync_authorization =
  { id; identities; name; timeouts }

type t = {
  etag : string prop;
  id : string prop;
  identities : string list prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~identities ~name __resource_id
    =
  let __resource_type = "google_apigee_sync_authorization" in
  let __resource =
    google_apigee_sync_authorization ?id ?timeouts ~identities ~name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_sync_authorization __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       identities =
         Prop.computed __resource_type __resource_id "identities";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
