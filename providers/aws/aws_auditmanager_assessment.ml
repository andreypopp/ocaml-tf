(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assessment_reports_destination = {
  destination : string prop;
  destination_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : assessment_reports_destination) -> ()

let yojson_of_assessment_reports_destination =
  (function
   | {
       destination = v_destination;
       destination_type = v_destination_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_type
         in
         ("destination_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : assessment_reports_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_assessment_reports_destination

[@@@deriving.end]

type scope__aws_accounts = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : scope__aws_accounts) -> ()

let yojson_of_scope__aws_accounts =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : scope__aws_accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope__aws_accounts

[@@@deriving.end]

type scope__aws_services = { service_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : scope__aws_services) -> ()

let yojson_of_scope__aws_services =
  (function
   | { service_name = v_service_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       `Assoc bnds
    : scope__aws_services -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope__aws_services

[@@@deriving.end]

type scope = {
  aws_accounts : scope__aws_accounts list;
  aws_services : scope__aws_services list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
  (function
   | { aws_accounts = v_aws_accounts; aws_services = v_aws_services }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scope__aws_services
             v_aws_services
         in
         ("aws_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scope__aws_accounts
             v_aws_accounts
         in
         ("aws_accounts", arg) :: bnds
       in
       `Assoc bnds
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

[@@@deriving.end]

type roles = { role_arn : string prop; role_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : roles) -> ()

let yojson_of_roles =
  (function
   | { role_arn = v_role_arn; role_type = v_role_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_type in
         ("role_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles

[@@@deriving.end]

type roles_all = { role_arn : string prop; role_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : roles_all) -> ()

let yojson_of_roles_all =
  (function
   | { role_arn = v_role_arn; role_type = v_role_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_type in
         ("role_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : roles_all -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles_all

[@@@deriving.end]

type aws_auditmanager_assessment = {
  description : string prop option; [@option]
  framework_id : string prop;
  name : string prop;
  roles : roles list;
  tags : (string * string prop) list option; [@option]
  assessment_reports_destination :
    assessment_reports_destination list;
  scope : scope list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_assessment) -> ()

let yojson_of_aws_auditmanager_assessment =
  (function
   | {
       description = v_description;
       framework_id = v_framework_id;
       name = v_name;
       roles = v_roles;
       tags = v_tags;
       assessment_reports_destination =
         v_assessment_reports_destination;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_scope v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_assessment_reports_destination
             v_assessment_reports_destination
         in
         ("assessment_reports_destination", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_roles v_roles in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_framework_id in
         ("framework_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_assessment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_assessment

[@@@deriving.end]

let assessment_reports_destination ~destination ~destination_type ()
    : assessment_reports_destination =
  { destination; destination_type }

let scope__aws_accounts ~id () : scope__aws_accounts = { id }

let scope__aws_services ~service_name () : scope__aws_services =
  { service_name }

let scope ~aws_accounts ~aws_services () : scope =
  { aws_accounts; aws_services }

let aws_auditmanager_assessment ?description ?tags
    ?(assessment_reports_destination = []) ?(scope = [])
    ~framework_id ~name ~roles () : aws_auditmanager_assessment =
  {
    description;
    framework_id;
    name;
    roles;
    tags;
    assessment_reports_destination;
    scope;
  }

type t = {
  arn : string prop;
  description : string prop;
  framework_id : string prop;
  id : string prop;
  name : string prop;
  roles : roles list prop;
  roles_all : roles_all list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?tags ?(assessment_reports_destination = [])
    ?(scope = []) ~framework_id ~name ~roles __id =
  let __type = "aws_auditmanager_assessment" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       framework_id = Prop.computed __type __id "framework_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       roles = Prop.computed __type __id "roles";
       roles_all = Prop.computed __type __id "roles_all";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_assessment
        (aws_auditmanager_assessment ?description ?tags
           ~assessment_reports_destination ~scope ~framework_id ~name
           ~roles ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags
    ?(assessment_reports_destination = []) ?(scope = [])
    ~framework_id ~name ~roles __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ~assessment_reports_destination ~scope
      ~framework_id ~name ~roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
