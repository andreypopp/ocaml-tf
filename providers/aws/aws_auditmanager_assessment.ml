(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?tags ~framework_id ~name ~roles
    ~assessment_reports_destination ~scope __resource_id =
  let __resource_type = "aws_auditmanager_assessment" in
  let __resource =
    aws_auditmanager_assessment ?description ?tags ~framework_id
      ~name ~roles ~assessment_reports_destination ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       framework_id =
         Prop.computed __resource_type __resource_id "framework_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       roles = Prop.computed __resource_type __resource_id "roles";
       roles_all =
         Prop.computed __resource_type __resource_id "roles_all";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
