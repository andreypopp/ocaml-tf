(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  instance_name : string;  (** The name of the Bigtable instance. *)
  name : string;
      (** The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers. *)
  split_keys : string list option; [@option]
      (** A list of predefined keys to split the table on. !> Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. *)
  column_family : google_bigtable_table__column_family list;
  timeouts : google_bigtable_table__timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_table *)

let google_bigtable_table ?split_keys ?timeouts ~instance_name ~name
    ~column_family __resource_id =
  let __resource_type = "google_bigtable_table" in
  let __resource =
    { instance_name; name; split_keys; column_family; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table __resource);
  ()
