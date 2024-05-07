(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_endpoint = { host : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : application_endpoint) -> ()

let yojson_of_application_endpoint =
  (function
   | { host = v_host; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : application_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_endpoint

[@@@deriving.end]

type gateway = {
  app_gateway : string prop;
  ingress_port : float prop;
  type_ : string prop; [@key "type"]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway) -> ()

let yojson_of_gateway =
  (function
   | {
       app_gateway = v_app_gateway;
       ingress_port = v_ingress_port;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ingress_port in
         ("ingress_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_gateway in
         ("app_gateway", arg) :: bnds
       in
       `Assoc bnds
    : gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway

[@@@deriving.end]

type google_beyondcorp_app_connection = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_beyondcorp_app_connection) -> ()

let yojson_of_google_beyondcorp_app_connection =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_beyondcorp_app_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_beyondcorp_app_connection

[@@@deriving.end]

let google_beyondcorp_app_connection ?id ?project ?region ~name () :
    google_beyondcorp_app_connection =
  { id; name; project; region }

type t = {
  tf_name : string;
  application_endpoint : application_endpoint list prop;
  connectors : string list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  gateway : gateway list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_beyondcorp_app_connection" in
  let __attrs =
    ({
       tf_name = __id;
       application_endpoint =
         Prop.computed __type __id "application_endpoint";
       connectors = Prop.computed __type __id "connectors";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gateway = Prop.computed __type __id "gateway";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connection
        (google_beyondcorp_app_connection ?id ?project ?region ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
