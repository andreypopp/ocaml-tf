(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type column_family = { family : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : column_family) -> ()

let yojson_of_column_family =
  (function
   | { family = v_family } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       `Assoc bnds
    : column_family -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_column_family

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_bigtable_table = {
  change_stream_retention : string prop option; [@option]
  deletion_protection : string prop option; [@option]
  id : string prop option; [@option]
  instance_name : string prop;
  name : string prop;
  project : string prop option; [@option]
  split_keys : string prop list option; [@option]
  column_family : column_family list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigtable_table) -> ()

let yojson_of_google_bigtable_table =
  (function
   | {
       change_stream_retention = v_change_stream_retention;
       deletion_protection = v_deletion_protection;
       id = v_id;
       instance_name = v_instance_name;
       name = v_name;
       project = v_project;
       split_keys = v_split_keys;
       column_family = v_column_family;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_column_family v_column_family
         in
         ("column_family", arg) :: bnds
       in
       let bnds =
         match v_split_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "split_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_name in
         ("instance_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_stream_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "change_stream_retention", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigtable_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigtable_table

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
