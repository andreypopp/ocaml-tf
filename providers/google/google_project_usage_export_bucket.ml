(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_project_usage_export_bucket = {
  bucket_name : string prop;
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_usage_export_bucket) -> ()

let yojson_of_google_project_usage_export_bucket =
  (function
   | {
       bucket_name = v_bucket_name;
       id = v_id;
       prefix = v_prefix;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : google_project_usage_export_bucket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_usage_export_bucket

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_project_usage_export_bucket ?id ?prefix ?project ?timeouts
    ~bucket_name () : google_project_usage_export_bucket =
  { bucket_name; id; prefix; project; timeouts }

type t = {
  tf_name : string;
  bucket_name : string prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

let make ?id ?prefix ?project ?timeouts ~bucket_name __id =
  let __type = "google_project_usage_export_bucket" in
  let __attrs =
    ({
       tf_name = __id;
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       prefix = Prop.computed __type __id "prefix";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_usage_export_bucket
        (google_project_usage_export_bucket ?id ?prefix ?project
           ?timeouts ~bucket_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?prefix ?project ?timeouts ~bucket_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?prefix ?project ?timeouts ~bucket_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
