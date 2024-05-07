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

type google_access_context_manager_service_perimeter_resource = {
  id : string prop option; [@option]
  perimeter_name : string prop;
  resource : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_service_perimeter_resource) ->
  ()

let yojson_of_google_access_context_manager_service_perimeter_resource
    =
  (function
   | {
       id = v_id;
       perimeter_name = v_perimeter_name;
       resource = v_resource;
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
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_perimeter_name
         in
         ("perimeter_name", arg) :: bnds
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
    : google_access_context_manager_service_perimeter_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_access_context_manager_service_perimeter_resource

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_access_context_manager_service_perimeter_resource ?id
    ?timeouts ~perimeter_name ~resource () :
    google_access_context_manager_service_perimeter_resource =
  { id; perimeter_name; resource; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  perimeter_name : string prop;
  resource : string prop;
}

let make ?id ?timeouts ~perimeter_name ~resource __id =
  let __type =
    "google_access_context_manager_service_perimeter_resource"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       perimeter_name = Prop.computed __type __id "perimeter_name";
       resource = Prop.computed __type __id "resource";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter_resource
        (google_access_context_manager_service_perimeter_resource ?id
           ?timeouts ~perimeter_name ~resource ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~perimeter_name ~resource __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~perimeter_name ~resource __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
