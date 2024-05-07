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

type google_document_ai_warehouse_location = {
  access_control_mode : string prop;
  database_type : string prop;
  document_creator_default_role : string prop option; [@option]
  id : string prop option; [@option]
  kms_key : string prop option; [@option]
  location : string prop;
  project_number : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_document_ai_warehouse_location) -> ()

let yojson_of_google_document_ai_warehouse_location =
  (function
   | {
       access_control_mode = v_access_control_mode;
       database_type = v_database_type;
       document_creator_default_role =
         v_document_creator_default_role;
       id = v_id;
       kms_key = v_kms_key;
       location = v_location;
       project_number = v_project_number;
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
           yojson_of_prop yojson_of_string v_project_number
         in
         ("project_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
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
         match v_document_creator_default_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_creator_default_role", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_type in
         ("database_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_access_control_mode
         in
         ("access_control_mode", arg) :: bnds
       in
       `Assoc bnds
    : google_document_ai_warehouse_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_document_ai_warehouse_location

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_warehouse_location
    ?document_creator_default_role ?id ?kms_key ?timeouts
    ~access_control_mode ~database_type ~location ~project_number ()
    : google_document_ai_warehouse_location =
  {
    access_control_mode;
    database_type;
    document_creator_default_role;
    id;
    kms_key;
    location;
    project_number;
    timeouts;
  }

type t = {
  tf_name : string;
  access_control_mode : string prop;
  database_type : string prop;
  document_creator_default_role : string prop;
  id : string prop;
  kms_key : string prop;
  location : string prop;
  project_number : string prop;
}

let make ?document_creator_default_role ?id ?kms_key ?timeouts
    ~access_control_mode ~database_type ~location ~project_number
    __id =
  let __type = "google_document_ai_warehouse_location" in
  let __attrs =
    ({
       tf_name = __id;
       access_control_mode =
         Prop.computed __type __id "access_control_mode";
       database_type = Prop.computed __type __id "database_type";
       document_creator_default_role =
         Prop.computed __type __id "document_creator_default_role";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       location = Prop.computed __type __id "location";
       project_number = Prop.computed __type __id "project_number";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_warehouse_location
        (google_document_ai_warehouse_location
           ?document_creator_default_role ?id ?kms_key ?timeouts
           ~access_control_mode ~database_type ~location
           ~project_number ());
    attrs = __attrs;
  }

let register ?tf_module ?document_creator_default_role ?id ?kms_key
    ?timeouts ~access_control_mode ~database_type ~location
    ~project_number __id =
  let (r : _ Tf_core.resource) =
    make ?document_creator_default_role ?id ?kms_key ?timeouts
      ~access_control_mode ~database_type ~location ~project_number
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
