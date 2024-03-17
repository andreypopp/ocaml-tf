(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_biglake_database__hive_options = {
  location_uri : string option; [@option]
      (** Cloud Storage folder URI where the database data is stored, starting with gs://. *)
  parameters : (string * string) list option; [@option]
      (** Stores user supplied Hive database parameters. An object containing a
list ofkey: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
}
[@@deriving yojson_of]
(** Options of a Hive database. *)

type google_biglake_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_biglake_database__timeouts *)

type google_biglake_database = {
  catalog : string;  (** The parent catalog. *)
  name : string;  (** The name of the database. *)
  type_ : string; [@key "type"]  (** The database type. *)
  hive_options : google_biglake_database__hive_options list;
  timeouts : google_biglake_database__timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_database *)

let google_biglake_database ?timeouts ~catalog ~name ~type_
    ~hive_options __resource_id =
  let __resource_type = "google_biglake_database" in
  let __resource =
    { catalog; name; type_; hive_options; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_biglake_database __resource);
  ()
