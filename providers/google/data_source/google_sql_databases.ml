(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type databases = {
  charset : string prop;
  collation : string prop;
  deletion_policy : string prop;
  instance : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : databases) -> ()

let yojson_of_databases =
  (function
   | {
       charset = v_charset;
       collation = v_collation;
       deletion_policy = v_deletion_policy;
       instance = v_instance;
       name = v_name;
       project = v_project;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deletion_policy
         in
         ("deletion_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collation in
         ("collation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_charset in
         ("charset", arg) :: bnds
       in
       `Assoc bnds
    : databases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_databases

[@@@deriving.end]

type google_sql_databases = {
  id : string prop option; [@option]
  instance : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_sql_databases) -> ()

let yojson_of_google_sql_databases =
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
    : google_sql_databases -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_sql_databases

[@@@deriving.end]

let google_sql_databases ?id ?project ~instance () :
    google_sql_databases =
  { id; instance; project }

type t = {
  tf_name : string;
  databases : databases list prop;
  id : string prop;
  instance : string prop;
  project : string prop;
}

let make ?id ?project ~instance __id =
  let __type = "google_sql_databases" in
  let __attrs =
    ({
       tf_name = __id;
       databases = Prop.computed __type __id "databases";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_sql_databases
        (google_sql_databases ?id ?project ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~instance __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~instance __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
