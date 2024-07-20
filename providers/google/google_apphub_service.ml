(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attributes__business_owners = {
  display_name : string prop option; [@option]
  email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes__business_owners) -> ()

let yojson_of_attributes__business_owners =
  (function
   | { display_name = v_display_name; email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attributes__business_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__business_owners

[@@@deriving.end]

type attributes__criticality = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes__criticality) -> ()

let yojson_of_attributes__criticality =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : attributes__criticality -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__criticality

[@@@deriving.end]

type attributes__developer_owners = {
  display_name : string prop option; [@option]
  email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes__developer_owners) -> ()

let yojson_of_attributes__developer_owners =
  (function
   | { display_name = v_display_name; email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attributes__developer_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__developer_owners

[@@@deriving.end]

type attributes__environment = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes__environment) -> ()

let yojson_of_attributes__environment =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : attributes__environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__environment

[@@@deriving.end]

type attributes__operator_owners = {
  display_name : string prop option; [@option]
  email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes__operator_owners) -> ()

let yojson_of_attributes__operator_owners =
  (function
   | { display_name = v_display_name; email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attributes__operator_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__operator_owners

[@@@deriving.end]

type attributes = {
  business_owners : attributes__business_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  criticality : attributes__criticality list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  developer_owners : attributes__developer_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  environment : attributes__environment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  operator_owners : attributes__operator_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attributes) -> ()

let yojson_of_attributes =
  (function
   | {
       business_owners = v_business_owners;
       criticality = v_criticality;
       developer_owners = v_developer_owners;
       environment = v_environment;
       operator_owners = v_operator_owners;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_operator_owners then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes__operator_owners)
               v_operator_owners
           in
           let bnd = "operator_owners", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_environment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes__environment)
               v_environment
           in
           let bnd = "environment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_developer_owners then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes__developer_owners)
               v_developer_owners
           in
           let bnd = "developer_owners", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_criticality then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes__criticality)
               v_criticality
           in
           let bnd = "criticality", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_business_owners then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes__business_owners)
               v_business_owners
           in
           let bnd = "business_owners", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type service_properties = {
  gcp_project : string prop;
  location : string prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_properties) -> ()

let yojson_of_service_properties =
  (function
   | {
       gcp_project = v_gcp_project;
       location = v_location;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gcp_project in
         ("gcp_project", arg) :: bnds
       in
       `Assoc bnds
    : service_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_properties

[@@@deriving.end]

type service_reference = { uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_reference) -> ()

let yojson_of_service_reference =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : service_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_reference

[@@@deriving.end]

type google_apphub_service = {
  application_id : string prop;
  description : string prop option; [@option]
  discovered_service : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  service_id : string prop;
  attributes : attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apphub_service) -> ()

let yojson_of_google_apphub_service =
  (function
   | {
       application_id = v_application_id;
       description = v_description;
       discovered_service = v_discovered_service;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       project = v_project;
       service_id = v_service_id;
       attributes = v_attributes;
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
         if Stdlib.( = ) [] v_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attributes) v_attributes
           in
           let bnd = "attributes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_id in
         ("service_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_discovered_service
         in
         ("discovered_service", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : google_apphub_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apphub_service

[@@@deriving.end]

let attributes__business_owners ?display_name ~email () :
    attributes__business_owners =
  { display_name; email }

let attributes__criticality ~type_ () : attributes__criticality =
  { type_ }

let attributes__developer_owners ?display_name ~email () :
    attributes__developer_owners =
  { display_name; email }

let attributes__environment ~type_ () : attributes__environment =
  { type_ }

let attributes__operator_owners ?display_name ~email () :
    attributes__operator_owners =
  { display_name; email }

let attributes ?(business_owners = []) ?(criticality = [])
    ?(developer_owners = []) ?(environment = [])
    ?(operator_owners = []) () : attributes =
  {
    business_owners;
    criticality;
    developer_owners;
    environment;
    operator_owners;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apphub_service ?description ?display_name ?id ?project
    ?(attributes = []) ?timeouts ~application_id ~discovered_service
    ~location ~service_id () : google_apphub_service =
  {
    application_id;
    description;
    discovered_service;
    display_name;
    id;
    location;
    project;
    service_id;
    attributes;
    timeouts;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  create_time : string prop;
  description : string prop;
  discovered_service : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_id : string prop;
  service_properties : service_properties list prop;
  service_reference : service_reference list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?project ?(attributes = [])
    ?timeouts ~application_id ~discovered_service ~location
    ~service_id __id =
  let __type = "google_apphub_service" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       discovered_service =
         Prop.computed __type __id "discovered_service";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_id = Prop.computed __type __id "service_id";
       service_properties =
         Prop.computed __type __id "service_properties";
       service_reference =
         Prop.computed __type __id "service_reference";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apphub_service
        (google_apphub_service ?description ?display_name ?id
           ?project ~attributes ?timeouts ~application_id
           ~discovered_service ~location ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?project
    ?(attributes = []) ?timeouts ~application_id ~discovered_service
    ~location ~service_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?project ~attributes
      ?timeouts ~application_id ~discovered_service ~location
      ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
