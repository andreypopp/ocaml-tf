(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_alloydb_backup__encryption_config = {
  kms_key_name : string option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type google_alloydb_backup__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_alloydb_backup__timeouts *)

type google_alloydb_backup__encryption_info = {
  encryption_type : string;  (** encryption_type *)
  kms_key_versions : string list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type google_alloydb_backup__expiry_quantity = {
  retention_count : float;  (** retention_count *)
  total_retention_count : float;  (** total_retention_count *)
}
[@@deriving yojson_of]

type google_alloydb_backup = {
  annotations : (string * string) list option; [@option]
      (** Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  backup_id : string;  (** The ID of the alloydb backup. *)
  cluster_name : string;
      (** The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}). *)
  description : string option; [@option]
      (** User-provided description of the backup. *)
  display_name : string option; [@option]
      (** User-settable and human-readable display name for the Backup. *)
  labels : (string * string) list option; [@option]
      (** User-defined labels for the alloydb backup. An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The location where the alloydb backup should reside. *)
  encryption_config : google_alloydb_backup__encryption_config list;
  timeouts : google_alloydb_backup__timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_backup *)

let google_alloydb_backup ?annotations ?description ?display_name
    ?labels ?timeouts ~backup_id ~cluster_name ~location
    ~encryption_config __resource_id =
  let __resource_type = "google_alloydb_backup" in
  let __resource =
    {
      annotations;
      backup_id;
      cluster_name;
      description;
      display_name;
      labels;
      location;
      encryption_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_alloydb_backup __resource);
  ()
