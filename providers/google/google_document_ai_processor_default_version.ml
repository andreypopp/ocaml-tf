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

type google_document_ai_processor_default_version = {
  id : string prop option; [@option]
  processor : string prop;
  version : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_document_ai_processor_default_version) -> ()

let yojson_of_google_document_ai_processor_default_version =
  (function
   | {
       id = v_id;
       processor = v_processor;
       version = v_version;
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
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_processor in
         ("processor", arg) :: bnds
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
    : google_document_ai_processor_default_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_document_ai_processor_default_version

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_document_ai_processor_default_version ?id ?timeouts
    ~processor ~version () :
    google_document_ai_processor_default_version =
  { id; processor; version; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  processor : string prop;
  version : string prop;
}

let make ?id ?timeouts ~processor ~version __id =
  let __type = "google_document_ai_processor_default_version" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       processor = Prop.computed __type __id "processor";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_document_ai_processor_default_version
        (google_document_ai_processor_default_version ?id ?timeouts
           ~processor ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~processor ~version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~processor ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
