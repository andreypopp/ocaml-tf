(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_snapshot__snapshot_encryption_key = {
  kms_key_self_link : string option; [@option]
      (** The name of the encryption key that is stored in Google Cloud KMS. *)
  kms_key_service_account : string option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
  sha256 : string;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
encryption key that protects this resource. *)
}
[@@deriving yojson_of]
(** Encrypts the snapshot using a customer-supplied encryption key.

After you encrypt a snapshot using a customer-supplied key, you must
provide the same key if you use the snapshot later. For example, you
must provide the encryption key when you create a disk from the
encrypted snapshot in a future request.

Customer-supplied encryption keys do not protect access to metadata of
the snapshot.

If you do not provide an encryption key when creating the snapshot,
then the snapshot will be encrypted using an automatically generated
key and you do not need to provide a key to use the snapshot later. *)

type google_compute_snapshot__source_disk_encryption_key = {
  kms_key_service_account : string option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. *)

type google_compute_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_snapshot__timeouts *)

type google_compute_snapshot = {
  chain_name : string option; [@option]
      (** Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and
comply with RFC1035. This is an uncommon option only for advanced
service owners who needs to create separate snapshot chains, for
example, for chargeback tracking.  When you describe your snapshot
resource, this field is visible only if it has a non-empty value. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this Snapshot.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  source_disk : string;
      (** A reference to the disk used to create this snapshot. *)
  snapshot_encryption_key :
    google_compute_snapshot__snapshot_encryption_key list;
  source_disk_encryption_key :
    google_compute_snapshot__source_disk_encryption_key list;
  timeouts : google_compute_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_snapshot *)

let google_compute_snapshot ?chain_name ?description ?labels
    ?timeouts ~name ~source_disk ~snapshot_encryption_key
    ~source_disk_encryption_key __resource_id =
  let __resource_type = "google_compute_snapshot" in
  let __resource =
    {
      chain_name;
      description;
      labels;
      name;
      source_disk;
      snapshot_encryption_key;
      source_disk_encryption_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_snapshot __resource);
  ()
