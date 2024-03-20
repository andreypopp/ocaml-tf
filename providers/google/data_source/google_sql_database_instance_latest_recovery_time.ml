(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_sql_database_instance_latest_recovery_time = {
  id : string prop option; [@option]
  instance : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_sql_database_instance_latest_recovery_time) -> ()

let yojson_of_google_sql_database_instance_latest_recovery_time =
  (function
   | { id = v_id; instance = v_instance; project = v_project } ->
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
       `Assoc bnds
    : google_sql_database_instance_latest_recovery_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_database_instance_latest_recovery_time

[@@@deriving.end]

let google_sql_database_instance_latest_recovery_time ?id ?project
    ~instance () : google_sql_database_instance_latest_recovery_time
    =
  { id; instance; project }

type t = {
  id : string prop;
  instance : string prop;
  latest_recovery_time : string prop;
  project : string prop;
}

let make ?id ?project ~instance __id =
  let __type = "google_sql_database_instance_latest_recovery_time" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       latest_recovery_time =
         Prop.computed __type __id "latest_recovery_time";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_database_instance_latest_recovery_time
        (google_sql_database_instance_latest_recovery_time ?id
           ?project ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~instance __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~instance __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
