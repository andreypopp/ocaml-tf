(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_encryption_key = {
  kms_key_self_link : string prop option; [@option]
      (** The name of the encryption key that is stored in Google Cloud KMS. *)
  kms_key_service_account : string prop option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
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

type source_disk_encryption_key = {
  kms_key_service_account : string prop option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_snapshot = {
  chain_name : string prop option; [@option]
      (** Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and
comply with RFC1035. This is an uncommon option only for advanced
service owners who needs to create separate snapshot chains, for
example, for chargeback tracking.  When you describe your snapshot
resource, this field is visible only if it has a non-empty value. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this Snapshot.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  source_disk : string prop;
      (** A reference to the disk used to create this snapshot. *)
  storage_locations : string prop list option; [@option]
      (** Cloud Storage bucket storage location of the snapshot (regional or multi-regional). *)
  zone : string prop option; [@option]
      (** A reference to the zone where the disk is hosted. *)
  snapshot_encryption_key : snapshot_encryption_key list;
  source_disk_encryption_key : source_disk_encryption_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_snapshot *)

let snapshot_encryption_key ?kms_key_self_link
    ?kms_key_service_account ?raw_key () : snapshot_encryption_key =
  { kms_key_self_link; kms_key_service_account; raw_key }

let source_disk_encryption_key ?kms_key_service_account ?raw_key () :
    source_disk_encryption_key =
  { kms_key_service_account; raw_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_snapshot ?chain_name ?description ?id ?labels
    ?project ?storage_locations ?zone ?timeouts ~name ~source_disk
    ~snapshot_encryption_key ~source_disk_encryption_key () :
    google_compute_snapshot =
  {
    chain_name;
    description;
    id;
    labels;
    name;
    project;
    source_disk;
    storage_locations;
    zone;
    snapshot_encryption_key;
    source_disk_encryption_key;
    timeouts;
  }

type t = {
  chain_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  snapshot_id : float prop;
  source_disk : string prop;
  storage_bytes : float prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
  zone : string prop;
}

let make ?chain_name ?description ?id ?labels ?project
    ?storage_locations ?zone ?timeouts ~name ~source_disk
    ~snapshot_encryption_key ~source_disk_encryption_key __id =
  let __type = "google_compute_snapshot" in
  let __attrs =
    ({
       chain_name = Prop.computed __type __id "chain_name";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       licenses = Prop.computed __type __id "licenses";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       source_disk = Prop.computed __type __id "source_disk";
       storage_bytes = Prop.computed __type __id "storage_bytes";
       storage_locations =
         Prop.computed __type __id "storage_locations";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_snapshot
        (google_compute_snapshot ?chain_name ?description ?id ?labels
           ?project ?storage_locations ?zone ?timeouts ~name
           ~source_disk ~snapshot_encryption_key
           ~source_disk_encryption_key ());
    attrs = __attrs;
  }

let register ?tf_module ?chain_name ?description ?id ?labels ?project
    ?storage_locations ?zone ?timeouts ~name ~source_disk
    ~snapshot_encryption_key ~source_disk_encryption_key __id =
  let (r : _ Tf_core.resource) =
    make ?chain_name ?description ?id ?labels ?project
      ?storage_locations ?zone ?timeouts ~name ~source_disk
      ~snapshot_encryption_key ~source_disk_encryption_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
