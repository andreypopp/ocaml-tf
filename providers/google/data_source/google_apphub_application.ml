(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attributes__operator_owners = {
  display_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : attributes__operator_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__operator_owners

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

type attributes__developer_owners = {
  display_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : attributes__developer_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__developer_owners

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

type attributes__business_owners = {
  display_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : attributes__business_owners ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attributes__business_owners

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

type scope = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
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
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

[@@@deriving.end]

type google_apphub_application = {
  application_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apphub_application) -> ()

let yojson_of_google_apphub_application =
  (function
   | {
       application_id = v_application_id;
       id = v_id;
       location = v_location;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : google_apphub_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apphub_application

[@@@deriving.end]

let google_apphub_application ?id ~application_id ~location ~project
    () : google_apphub_application =
  { application_id; id; location; project }

type t = {
  tf_name : string;
  application_id : string prop;
  attributes : attributes list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  scope : scope list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ~application_id ~location ~project __id =
  let __type = "google_apphub_application" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       attributes = Prop.computed __type __id "attributes";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
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
      yojson_of_google_apphub_application
        (google_apphub_application ?id ~application_id ~location
           ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~application_id ~location ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ~application_id ~location ~project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
