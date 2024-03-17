(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_firestore_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firestore_database__timeouts *)

type google_firestore_database = {
  deletion_policy : string option; [@option]
      (** Deletion behavior for this database.
If the deletion policy is 'ABANDON', the database will be removed from Terraform state but not deleted from Google Cloud upon destruction.
If the deletion policy is 'DELETE', the database will both be removed from Terraform state and deleted from Google Cloud upon destruction.
The default value is 'ABANDON'.
See also 'delete_protection'. *)
  location_id : string;
      (** The location of the database. Available locations are listed at
https://cloud.google.com/firestore/docs/locations. *)
  name : string;
      (** The ID to use for the database, which will become the final
component of the database's resource name. This value should be 4-63
characters. Valid characters are /[a-z][0-9]-/ with first character
a letter and the last a letter or a number. Must not be
UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
(default) database id is also valid. *)
  point_in_time_recovery_enablement : string option; [@option]
      (** Whether to enable the PITR feature on this database.
If 'POINT_IN_TIME_RECOVERY_ENABLED' is selected, reads are supported on selected versions of the data from within the past 7 days.
versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
and reads against 1-minute snapshots beyond 1 hour and within 7 days.
If 'POINT_IN_TIME_RECOVERY_DISABLED' is selected, reads are supported on any version of the data from within the past 1 hour. Default value: POINT_IN_TIME_RECOVERY_DISABLED Possible values: [POINT_IN_TIME_RECOVERY_ENABLED, POINT_IN_TIME_RECOVERY_DISABLED] *)
  type_ : string; [@key "type"]
      (** The type of the database.
See https://cloud.google.com/datastore/docs/firestore-or-datastore
for information about how to choose. Possible values: [FIRESTORE_NATIVE, DATASTORE_MODE] *)
  timeouts : google_firestore_database__timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_database *)

let google_firestore_database ?deletion_policy
    ?point_in_time_recovery_enablement ?timeouts ~location_id ~name
    ~type_ __resource_id =
  let __resource_type = "google_firestore_database" in
  let __resource =
    {
      deletion_policy;
      location_id;
      name;
      point_in_time_recovery_enablement;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_database __resource);
  ()
