(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type column_family = {
  family : string prop;  (** The name of the column family. *)
}
[@@deriving yojson_of]
(** A group of columns within a table which share a common configuration. This can be specified multiple times. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigtable_table = {
  change_stream_retention : string prop option; [@option]
      (** Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days. *)
  deletion_protection : string prop option; [@option]
      (** A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;
      (** The name of the Bigtable instance. *)
  name : string prop;
      (** The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  split_keys : string prop list option; [@option]
      (** A list of predefined keys to split the table on. !> Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. *)
  column_family : column_family list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_table *)

let column_family ~family () : column_family = { family }
let timeouts ?create ?update () : timeouts = { create; update }

let google_bigtable_table ?change_stream_retention
    ?deletion_protection ?id ?project ?split_keys ?timeouts
    ~instance_name ~name ~column_family () : google_bigtable_table =
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

type t = {
  change_stream_retention : string prop;
  deletion_protection : string prop;
  id : string prop;
  instance_name : string prop;
  name : string prop;
  project : string prop;
  split_keys : string list prop;
}

let make ?change_stream_retention ?deletion_protection ?id ?project
    ?split_keys ?timeouts ~instance_name ~name ~column_family __id =
  let __type = "google_bigtable_table" in
  let __attrs =
    ({
       change_stream_retention =
         Prop.computed __type __id "change_stream_retention";
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       split_keys = Prop.computed __type __id "split_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_table
        (google_bigtable_table ?change_stream_retention
           ?deletion_protection ?id ?project ?split_keys ?timeouts
           ~instance_name ~name ~column_family ());
    attrs = __attrs;
  }

let register ?tf_module ?change_stream_retention ?deletion_protection
    ?id ?project ?split_keys ?timeouts ~instance_name ~name
    ~column_family __id =
  let (r : _ Tf_core.resource) =
    make ?change_stream_retention ?deletion_protection ?id ?project
      ?split_keys ?timeouts ~instance_name ~name ~column_family __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
