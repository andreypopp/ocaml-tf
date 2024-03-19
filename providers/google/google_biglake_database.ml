(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~catalog ~name ~type_
    ~hive_options __resource_id =
  let __resource_type = "google_biglake_database" in
  let __resource =
    google_biglake_database ?id ?timeouts ~catalog ~name ~type_
      ~hive_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_biglake_database __resource);
  let __resource_attributes =
    ({
       catalog =
         Prop.computed __resource_type __resource_id "catalog";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_time =
         Prop.computed __resource_type __resource_id "delete_time";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
