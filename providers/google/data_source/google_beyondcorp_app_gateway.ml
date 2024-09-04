(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type allocated_connections = {
  ingress_port : float prop;
  psc_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : allocated_connections) -> ()

let yojson_of_allocated_connections =
  (function
   | { ingress_port = v_ingress_port; psc_uri = v_psc_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_psc_uri in
         ("psc_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ingress_port in
         ("ingress_port", arg) :: bnds
       in
       `Assoc bnds
    : allocated_connections -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_allocated_connections

[@@@deriving.end]

type google_beyondcorp_app_gateway = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_beyondcorp_app_gateway) -> ()

let yojson_of_google_beyondcorp_app_gateway =
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
    : google_beyondcorp_app_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_beyondcorp_app_gateway

[@@@deriving.end]

let google_beyondcorp_app_gateway ?id ?project ?region ~name () :
    google_beyondcorp_app_gateway =
  { id; name; project; region }

type t = {
  tf_name : string;
  allocated_connections : allocated_connections list prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  host_type : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  uri : string prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_beyondcorp_app_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       allocated_connections =
         Prop.computed __type __id "allocated_connections";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       host_type = Prop.computed __type __id "host_type";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_gateway
        (google_beyondcorp_app_gateway ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
