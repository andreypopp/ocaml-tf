(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hive_options__storage_descriptor = {
  input_format : string prop option; [@option]
      (** The fully qualified Java class name of the input format. *)
  location_uri : string prop option; [@option]
      (** Cloud Storage folder URI where the table data is stored, starting with gs://. *)
  output_format : string prop option; [@option]
      (** The fully qualified Java class name of the output format. *)
}
[@@deriving yojson_of]
(** Stores physical storage information on the data. *)

type hive_options = {
  parameters : (string * string prop) list option; [@option]
      (** Stores user supplied Hive table parameters. An object containing a
list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  table_type : string prop option; [@option]
      (** Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE. *)
  storage_descriptor : hive_options__storage_descriptor list;
}
[@@deriving yojson_of]
(** Options of a Hive table. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_biglake_table = {
  database : string prop option; [@option]
      (** The id of the parent database. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Output only. The name of the Table. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId} *)
  type_ : string prop option; [@option] [@key "type"]
      (** The database type. Possible values: [HIVE] *)
  hive_options : hive_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_table *)

let hive_options__storage_descriptor ?input_format ?location_uri
    ?output_format () : hive_options__storage_descriptor =
  { input_format; location_uri; output_format }

let hive_options ?parameters ?table_type ~storage_descriptor () :
    hive_options =
  { parameters; table_type; storage_descriptor }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_biglake_table ?database ?id ?type_ ?timeouts ~name
    ~hive_options () : google_biglake_table =
  { database; id; name; type_; hive_options; timeouts }

type t = {
  create_time : string prop;
  database : string prop;
  delete_time : string prop;
  etag : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?database ?id ?type_ ?timeouts ~name ~hive_options __id =
  let __type = "google_biglake_table" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       database = Prop.computed __type __id "database";
       delete_time = Prop.computed __type __id "delete_time";
       etag = Prop.computed __type __id "etag";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_biglake_table
        (google_biglake_table ?database ?id ?type_ ?timeouts ~name
           ~hive_options ());
    attrs = __attrs;
  }

let register ?tf_module ?database ?id ?type_ ?timeouts ~name
    ~hive_options __id =
  let (r : _ Tf_core.resource) =
    make ?database ?id ?type_ ?timeouts ~name ~hive_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
