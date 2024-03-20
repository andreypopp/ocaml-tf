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

type google_apigee_endpoint_attachment = {
  endpoint_attachment_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  org_id : string prop;
  service_attachment : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_endpoint_attachment) -> ()

let yojson_of_google_apigee_endpoint_attachment =
  (function
   | {
       endpoint_attachment_id = v_endpoint_attachment_id;
       id = v_id;
       location = v_location;
       org_id = v_org_id;
       service_attachment = v_service_attachment;
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
           yojson_of_prop yojson_of_string v_service_attachment
         in
         ("service_attachment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_attachment_id
         in
         ("endpoint_attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_endpoint_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_endpoint_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_endpoint_attachment ?id ?timeouts
    ~endpoint_attachment_id ~location ~org_id ~service_attachment ()
    : google_apigee_endpoint_attachment =
  {
    endpoint_attachment_id;
    id;
    location;
    org_id;
    service_attachment;
    timeouts;
  }

type t = {
  connection_state : string prop;
  endpoint_attachment_id : string prop;
  host : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  service_attachment : string prop;
}

let make ?id ?timeouts ~endpoint_attachment_id ~location ~org_id
    ~service_attachment __id =
  let __type = "google_apigee_endpoint_attachment" in
  let __attrs =
    ({
       connection_state =
         Prop.computed __type __id "connection_state";
       endpoint_attachment_id =
         Prop.computed __type __id "endpoint_attachment_id";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       service_attachment =
         Prop.computed __type __id "service_attachment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_endpoint_attachment
        (google_apigee_endpoint_attachment ?id ?timeouts
           ~endpoint_attachment_id ~location ~org_id
           ~service_attachment ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint_attachment_id
    ~location ~org_id ~service_attachment __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint_attachment_id ~location ~org_id
      ~service_attachment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
