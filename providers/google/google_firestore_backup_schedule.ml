(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type daily_recurrence = unit [@@deriving_inline yojson_of]

let _ = fun (_ : daily_recurrence) -> ()

let yojson_of_daily_recurrence =
  (yojson_of_unit
    : daily_recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_daily_recurrence

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

type weekly_recurrence = { day : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : weekly_recurrence) -> ()

let yojson_of_weekly_recurrence =
  (function
   | { day = v_day } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : weekly_recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_weekly_recurrence

[@@@deriving.end]

type google_firestore_backup_schedule = {
  database : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  retention : string prop;
  daily_recurrence : daily_recurrence list;
  timeouts : timeouts option;
  weekly_recurrence : weekly_recurrence list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firestore_backup_schedule) -> ()

let yojson_of_google_firestore_backup_schedule =
  (function
   | {
       database = v_database;
       id = v_id;
       project = v_project;
       retention = v_retention;
       daily_recurrence = v_daily_recurrence;
       timeouts = v_timeouts;
       weekly_recurrence = v_weekly_recurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_weekly_recurrence
             v_weekly_recurrence
         in
         ("weekly_recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_daily_recurrence
             v_daily_recurrence
         in
         ("daily_recurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_retention in
         ("retention", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_firestore_backup_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firestore_backup_schedule

[@@@deriving.end]

let daily_recurrence () = ()

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let weekly_recurrence ?day () : weekly_recurrence = { day }

let google_firestore_backup_schedule ?database ?id ?project
    ?(daily_recurrence = []) ?timeouts ?(weekly_recurrence = [])
    ~retention () : google_firestore_backup_schedule =
  {
    database;
    id;
    project;
    retention;
    daily_recurrence;
    timeouts;
    weekly_recurrence;
  }

type t = {
  database : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  retention : string prop;
}

let make ?database ?id ?project ?(daily_recurrence = []) ?timeouts
    ?(weekly_recurrence = []) ~retention __id =
  let __type = "google_firestore_backup_schedule" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       retention = Prop.computed __type __id "retention";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firestore_backup_schedule
        (google_firestore_backup_schedule ?database ?id ?project
           ~daily_recurrence ?timeouts ~weekly_recurrence ~retention
           ());
    attrs = __attrs;
  }

let register ?tf_module ?database ?id ?project
    ?(daily_recurrence = []) ?timeouts ?(weekly_recurrence = [])
    ~retention __id =
  let (r : _ Tf_core.resource) =
    make ?database ?id ?project ~daily_recurrence ?timeouts
      ~weekly_recurrence ~retention __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
