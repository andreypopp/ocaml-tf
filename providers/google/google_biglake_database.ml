(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hive_options = {
  location_uri : string prop option; [@option]
      (** Cloud Storage folder URI where the database data is stored, starting with gs://. *)
  parameters : (string * string prop) list option; [@option]
      (** Stores user supplied Hive database parameters. An object containing a
list ofkey: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
}
[@@deriving yojson_of]
(** Options of a Hive database. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_biglake_database = {
  catalog : string prop;  (** The parent catalog. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the database. *)
  type_ : string prop; [@key "type"]  (** The database type. *)
  hive_options : hive_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_database *)

let hive_options ?location_uri ?parameters () : hive_options =
  { location_uri; parameters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_biglake_database ?id ?timeouts ~catalog ~name ~type_
    ~hive_options () : google_biglake_database =
  { catalog; id; name; type_; hive_options; timeouts }

type t = {
  catalog : string prop;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?id ?timeouts ~catalog ~name ~type_ ~hive_options __id =
  let __type = "google_biglake_database" in
  let __attrs =
    ({
       catalog = Prop.computed __type __id "catalog";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
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
      yojson_of_google_biglake_database
        (google_biglake_database ?id ?timeouts ~catalog ~name ~type_
           ~hive_options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~catalog ~name ~type_
    ~hive_options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~catalog ~name ~type_ ~hive_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
