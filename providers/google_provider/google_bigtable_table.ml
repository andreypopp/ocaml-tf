(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigtable_table__column_family = {
  family : string;  (** The name of the column family. *)
}
[@@deriving yojson_of]
(** A group of columns within a table which share a common configuration. This can be specified multiple times. *)

type google_bigtable_table__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigtable_table__timeouts *)

type google_bigtable_table = {
  change_stream_retention : string option; [@option]
      (** Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days. *)
  deletion_protection : string option; [@option]
      (** A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. *)
  id : string option; [@option]  (** id *)
  instance_name : string;  (** The name of the Bigtable instance. *)
  name : string;
      (** The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers. *)
  project : string option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  split_keys : string list option; [@option]
      (** A list of predefined keys to split the table on. !> Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. *)
  column_family : google_bigtable_table__column_family list;
  timeouts : google_bigtable_table__timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_table *)

let google_bigtable_table ?change_stream_retention
    ?deletion_protection ?id ?project ?split_keys ?timeouts
    ~instance_name ~name ~column_family __resource_id =
  let __resource_type = "google_bigtable_table" in
  let __resource =
    {
      change_stream_retention;
      deletion_protection;
      id;
      instance_name;
      name;
      project;
      split_keys;
      column_family;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table __resource);
  ()
