(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_assessment__assessment_reports_destination = {
  destination : string prop;  (** destination *)
  destination_type : string prop;  (** destination_type *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment__assessment_reports_destination *)

type aws_auditmanager_assessment__scope__aws_accounts = {
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment__scope__aws_accounts *)

type aws_auditmanager_assessment__scope__aws_services = {
  service_name : string prop;  (** service_name *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment__scope__aws_services *)

type aws_auditmanager_assessment__scope = {
  aws_accounts :
    aws_auditmanager_assessment__scope__aws_accounts list;
  aws_services :
    aws_auditmanager_assessment__scope__aws_services list;
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment__scope *)

type aws_auditmanager_assessment__roles = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}
[@@deriving yojson_of]

type aws_auditmanager_assessment__roles_all = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}
[@@deriving yojson_of]

type aws_auditmanager_assessment = {
  description : string prop option; [@option]  (** description *)
  framework_id : string prop;  (** framework_id *)
  name : string prop;  (** name *)
  roles : aws_auditmanager_assessment__roles list;  (** roles *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  assessment_reports_destination :
    aws_auditmanager_assessment__assessment_reports_destination list;
  scope : aws_auditmanager_assessment__scope list;
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment *)

let aws_auditmanager_assessment ?description ?tags ~framework_id
    ~name ~roles ~assessment_reports_destination ~scope __resource_id
    =
  let __resource_type = "aws_auditmanager_assessment" in
  let __resource =
    {
      description;
      framework_id;
      name;
      roles;
      tags;
      assessment_reports_destination;
      scope;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment __resource);
  ()
