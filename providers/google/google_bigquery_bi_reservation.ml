(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type preferred_tables = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preferred_tables) -> ()

let yojson_of_preferred_tables =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       table_id = v_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preferred_tables -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preferred_tables

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_bigquery_bi_reservation = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  size : float prop option; [@option]
  preferred_tables : preferred_tables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_bi_reservation) -> ()

let yojson_of_google_bigquery_bi_reservation =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       size = v_size;
       preferred_tables = v_preferred_tables;
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
         if Stdlib.( = ) [] v_preferred_tables then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preferred_tables)
               v_preferred_tables
           in
           let bnd = "preferred_tables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_bi_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_bi_reservation

[@@@deriving.end]

let preferred_tables ?dataset_id ?project_id ?table_id () :
    preferred_tables =
  { dataset_id; project_id; table_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_bi_reservation ?id ?project ?size
    ?(preferred_tables = []) ?timeouts ~location () :
    google_bigquery_bi_reservation =
  { id; location; project; size; preferred_tables; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  size : float prop;
  update_time : string prop;
}

let make ?id ?project ?size ?(preferred_tables = []) ?timeouts
    ~location __id =
  let __type = "google_bigquery_bi_reservation" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       size = Prop.computed __type __id "size";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_bi_reservation
        (google_bigquery_bi_reservation ?id ?project ?size
           ~preferred_tables ?timeouts ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?size ?(preferred_tables = [])
    ?timeouts ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?size ~preferred_tables ?timeouts ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
