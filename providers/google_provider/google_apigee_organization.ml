(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_organization__properties__property = {
  name : string option; [@option]  (** Name of the property. *)
  value : string option; [@option]  (** Value of the property. *)
}
[@@deriving yojson_of]
(** List of all properties in the object. *)

type google_apigee_organization__properties = {
  property : google_apigee_organization__properties__property list;
}
[@@deriving yojson_of]
(** Properties defined in the Apigee organization profile. *)

type google_apigee_organization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_organization__timeouts *)

type google_apigee_organization = {
  analytics_region : string option; [@option]
      (** Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org). *)
  authorized_network : string option; [@option]
      (** Compute Engine network used for Service Networking to be peered with Apigee runtime instances.
See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).
Valid only when 'RuntimeType' is set to CLOUD. The value can be updated only when there are no runtime instances. For example: default. *)
  description : string option; [@option]
      (** Description of the Apigee organization. *)
  disable_vpc_peering : bool option; [@option]
      (** Flag that specifies whether the VPC Peering through Private Google Access should be
disabled between the consumer network and Apigee. Required if an 'authorizedNetwork'
on the consumer project is not provided, in which case the flag should be set to 'true'.
Valid only when 'RuntimeType' is set to CLOUD. The value must be set before the creation
of any Apigee runtime instance and can be updated only when there are no runtime instances. *)
  display_name : string option; [@option]
      (** The display name of the Apigee organization. *)
  project_id : string;
      (** The project ID associated with the Apigee organization. *)
  retention : string option; [@option]
      (** Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType
is not EVALUATION). It controls how long Organization data will be retained after the initial delete
operation completes. During this period, the Organization may be restored to its last known state.
After this period, the Organization will no longer be able to be restored. Default value: DELETION_RETENTION_UNSPECIFIED Possible values: [DELETION_RETENTION_UNSPECIFIED, MINIMUM] *)
  runtime_database_encryption_key_name : string option; [@option]
      (** Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.
Update is not allowed after the organization is created.
If not specified, a Google-Managed encryption key will be used.
Valid only when 'RuntimeType' is CLOUD. For example: 'projects/foo/locations/us/keyRings/bar/cryptoKeys/baz'. *)
  runtime_type : string option; [@option]
      (** Runtime type of the Apigee organization based on the Apigee subscription purchased. Default value: CLOUD Possible values: [CLOUD, HYBRID] *)
  properties : google_apigee_organization__properties list;
  timeouts : google_apigee_organization__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_organization *)

let google_apigee_organization ?analytics_region ?authorized_network
    ?description ?disable_vpc_peering ?display_name ?retention
    ?runtime_database_encryption_key_name ?runtime_type ?timeouts
    ~project_id ~properties __resource_id =
  let __resource_type = "google_apigee_organization" in
  let __resource =
    {
      analytics_region;
      authorized_network;
      description;
      disable_vpc_peering;
      display_name;
      project_id;
      retention;
      runtime_database_encryption_key_name;
      runtime_type;
      properties;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_organization __resource);
  ()
