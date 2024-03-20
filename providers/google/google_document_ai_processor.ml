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

type google_document_ai_processor = {
  display_name : string prop;
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_document_ai_processor) -> ()

let yojson_of_google_document_ai_processor =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       kms_key_name = v_kms_key_name;
       location = v_location;
       project = v_project;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_document_ai_processor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_document_ai_processor

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_processor ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ () : google_document_ai_processor
    =
  {
    display_name;
    id;
    kms_key_name;
    location;
    project;
    type_;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  kms_key_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

let make ?id ?kms_key_name ?project ?timeouts ~display_name ~location
    ~type_ __id =
  let __type = "google_document_ai_processor" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_processor
        (google_document_ai_processor ?id ?kms_key_name ?project
           ?timeouts ~display_name ~location ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_name ?project ?timeouts
    ~display_name ~location ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_name ?project ?timeouts ~display_name ~location
      ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
