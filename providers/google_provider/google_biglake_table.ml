(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_biglake_table__hive_options__storage_descriptor = {
  input_format : string prop option; [@option]
      (** The fully qualified Java class name of the input format. *)
  location_uri : string prop option; [@option]
      (** Cloud Storage folder URI where the table data is stored, starting with gs://. *)
  output_format : string prop option; [@option]
      (** The fully qualified Java class name of the output format. *)
}
[@@deriving yojson_of]
(** Stores physical storage information on the data. *)

type google_biglake_table__hive_options = {
  parameters : (string * string prop) list option; [@option]
      (** Stores user supplied Hive table parameters. An object containing a
list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  table_type : string prop option; [@option]
      (** Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE. *)
  storage_descriptor :
    google_biglake_table__hive_options__storage_descriptor list;
}
[@@deriving yojson_of]
(** Options of a Hive table. *)

type google_biglake_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_biglake_table__timeouts *)

type google_biglake_table = {
  database : string prop option; [@option]
      (** The id of the parent database. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Output only. The name of the Table. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId} *)
  type_ : string prop option; [@option] [@key "type"]
      (** The database type. Possible values: [HIVE] *)
  hive_options : google_biglake_table__hive_options list;
  timeouts : google_biglake_table__timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_table *)

let google_biglake_table ?database ?id ?type_ ?timeouts ~name
    ~hive_options __resource_id =
  let __resource_type = "google_biglake_table" in
  let __resource =
    { database; id; name; type_; hive_options; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_biglake_table __resource);
  ()
