(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_folder_access_approval_settings__enrolled_services = {
  cloud_product : string;
      (** The product for which Access Approval will be enrolled. Allowed values are listed (case-sensitive):
  * all
  * App Engine
  * BigQuery
  * Cloud Bigtable
  * Cloud Key Management Service
  * Compute Engine
  * Cloud Dataflow
  * Cloud Identity and Access Management
  * Cloud Pub/Sub
  * Cloud Storage
  * Persistent Disk

Note: These values are supported as input, but considered a legacy format:
  * all
  * appengine.googleapis.com
  * bigquery.googleapis.com
  * bigtable.googleapis.com
  * cloudkms.googleapis.com
  * compute.googleapis.com
  * dataflow.googleapis.com
  * iam.googleapis.com
  * pubsub.googleapis.com
  * storage.googleapis.com *)
  enrollment_level : string option; [@option]
      (** The enrollment level of the service. Default value: BLOCK_ALL Possible values: [BLOCK_ALL] *)
}
[@@deriving yojson_of]
(** A list of Google Cloud Services for which the given resource has Access Approval enrolled.
Access requests for the resource given by name against any of these services contained here will be required
to have explicit approval. Enrollment can only be done on an all or nothing basis.

A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. *)

type google_folder_access_approval_settings__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_folder_access_approval_settings__timeouts *)

type google_folder_access_approval_settings = {
  active_key_version : string option; [@option]
      (** The asymmetric crypto key version to use for signing approval requests.
Empty active_key_version indicates that a Google-managed key should be used for signing.
This property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. *)
  folder_id : string;
      (** ID of the folder of the access approval settings. *)
  id : string option; [@option]  (** id *)
  notification_emails : string list option; [@option]
      (** A list of email addresses to which notifications relating to approval requests should be sent.
Notifications relating to a resource will be sent to all emails in the settings of ancestor
resources of that resource. A maximum of 50 email addresses are allowed. *)
  enrolled_services :
    google_folder_access_approval_settings__enrolled_services list;
  timeouts : google_folder_access_approval_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_folder_access_approval_settings *)

let google_folder_access_approval_settings ?active_key_version ?id
    ?notification_emails ?timeouts ~folder_id ~enrolled_services
    __resource_id =
  let __resource_type = "google_folder_access_approval_settings" in
  let __resource =
    {
      active_key_version;
      folder_id;
      id;
      notification_emails;
      enrolled_services;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_access_approval_settings __resource);
  ()
