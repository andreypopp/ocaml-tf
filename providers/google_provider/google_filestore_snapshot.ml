(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_filestore_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_filestore_snapshot__timeouts *)

type google_filestore_snapshot = {
  description : string prop option; [@option]
      (** A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected. *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;
      (** The resource name of the filestore instance. *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location of the instance. This can be a region for ENTERPRISE tier instances. *)
  name : string prop;
      (** The resource name of the snapshot. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_filestore_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_snapshot *)

let google_filestore_snapshot ?description ?id ?labels ?project
    ?timeouts ~instance ~location ~name __resource_id =
  let __resource_type = "google_filestore_snapshot" in
  let __resource =
    {
      description;
      id;
      instance;
      labels;
      location;
      name;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_filestore_snapshot __resource);
  ()
