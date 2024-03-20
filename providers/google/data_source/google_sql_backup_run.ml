(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_sql_backup_run = {
  backup_id : float prop option; [@option]
  id : string prop option; [@option]
  instance : string prop;
  most_recent : bool prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_backup_run) -> ()

let yojson_of_google_sql_backup_run =
  (function
   | {
       backup_id = v_backup_id;
       id = v_id;
       instance = v_instance;
       most_recent = v_most_recent;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
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
         match v_backup_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_sql_backup_run -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_backup_run

[@@@deriving.end]

let google_sql_backup_run ?backup_id ?id ?most_recent ?project
    ~instance () : google_sql_backup_run =
  { backup_id; id; instance; most_recent; project }

type t = {
  backup_id : float prop;
  id : string prop;
  instance : string prop;
  location : string prop;
  most_recent : bool prop;
  project : string prop;
  start_time : string prop;
  status : string prop;
}

let make ?backup_id ?id ?most_recent ?project ~instance __id =
  let __type = "google_sql_backup_run" in
  let __attrs =
    ({
       backup_id = Prop.computed __type __id "backup_id";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       location = Prop.computed __type __id "location";
       most_recent = Prop.computed __type __id "most_recent";
       project = Prop.computed __type __id "project";
       start_time = Prop.computed __type __id "start_time";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_backup_run
        (google_sql_backup_run ?backup_id ?id ?most_recent ?project
           ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_id ?id ?most_recent ?project
    ~instance __id =
  let (r : _ Tf_core.resource) =
    make ?backup_id ?id ?most_recent ?project ~instance __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
