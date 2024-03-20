(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type assessment_reports_destination = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
}
[@@deriving yojson_of]
(** assessment_reports_destination *)

type scope__aws_accounts = { id : string prop  (** id *) }
[@@deriving yojson_of]
(** scope__aws_accounts *)

type scope__aws_services = {
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** scope__aws_services *)

type scope = {
  aws_accounts : scope__aws_accounts list;
  aws_services : scope__aws_services list;
}
[@@deriving yojson_of]
(** scope *)

type roles = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}
[@@deriving yojson_of]

type roles_all = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}
[@@deriving yojson_of]

type aws_auditmanager_assessment = {
  description : string prop option; [@option]  (** description *)
  framework_id : string prop;  (** framework_id *)
  name : string prop;  (** name *)
  roles : roles list;  (** roles *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  assessment_reports_destination :
    assessment_reports_destination list;
  scope : scope list;
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment *)

let assessment_reports_destination ~destination ~destination_type ()
    : assessment_reports_destination =
  { destination; destination_type }

let scope__aws_accounts ~id () : scope__aws_accounts = { id }

let scope__aws_services ~service_name () : scope__aws_services =
  { service_name }

let scope ~aws_accounts ~aws_services () : scope =
  { aws_accounts; aws_services }

let aws_auditmanager_assessment ?description ?tags ~framework_id
    ~name ~roles ~assessment_reports_destination ~scope () :
    aws_auditmanager_assessment =
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

let make ?description ?tags ~framework_id ~name ~roles
    ~assessment_reports_destination ~scope __id =
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
        (aws_auditmanager_assessment ?description ?tags ~framework_id
           ~name ~roles ~assessment_reports_destination ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ~framework_id ~name ~roles
    ~assessment_reports_destination ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ~framework_id ~name ~roles
      ~assessment_reports_destination ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
