(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_assessment_delegation = {
  assessment_id : string prop;  (** assessment_id *)
  comment : string prop option; [@option]  (** comment *)
  control_set_id : string prop;  (** control_set_id *)
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}
[@@deriving yojson_of]
(** aws_auditmanager_assessment_delegation *)

let aws_auditmanager_assessment_delegation ?comment ~assessment_id
    ~control_set_id ~role_arn ~role_type () :
    aws_auditmanager_assessment_delegation =
  { assessment_id; comment; control_set_id; role_arn; role_type }

type t = {
  assessment_id : string prop;
  comment : string prop;
  control_set_id : string prop;
  delegation_id : string prop;
  id : string prop;
  role_arn : string prop;
  role_type : string prop;
  status : string prop;
}

let register ?tf_module ?comment ~assessment_id ~control_set_id
    ~role_arn ~role_type __resource_id =
  let __resource_type = "aws_auditmanager_assessment_delegation" in
  let __resource =
    aws_auditmanager_assessment_delegation ?comment ~assessment_id
      ~control_set_id ~role_arn ~role_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment_delegation __resource);
  let __resource_attributes =
    ({
       assessment_id =
         Prop.computed __resource_type __resource_id "assessment_id";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       control_set_id =
         Prop.computed __resource_type __resource_id "control_set_id";
       delegation_id =
         Prop.computed __resource_type __resource_id "delegation_id";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       role_type =
         Prop.computed __resource_type __resource_id "role_type";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
