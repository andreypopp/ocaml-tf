(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_filestore_backup__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_filestore_backup__timeouts *)

type google_filestore_backup = {
  description : string option; [@option]
      (** A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The name of the location of the instance. This can be a region for ENTERPRISE tier instances. *)
  name : string;
      (** The resource name of the backup. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  source_file_share : string;
      (** Name of the file share in the source Cloud Filestore instance that the backup is created from. *)
  source_instance : string;
      (** The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup. *)
  timeouts : google_filestore_backup__timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_backup *)

let google_filestore_backup ?description ?labels ?timeouts ~location
    ~name ~source_file_share ~source_instance __resource_id =
  let __resource_type = "google_filestore_backup" in
  let __resource =
    {
      description;
      labels;
      location;
      name;
      source_file_share;
      source_instance;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_filestore_backup __resource);
  ()
