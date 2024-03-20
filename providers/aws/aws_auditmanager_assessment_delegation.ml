(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?comment ~assessment_id ~control_set_id ~role_arn ~role_type
    __id =
  let __type = "aws_auditmanager_assessment_delegation" in
  let __attrs =
    ({
       assessment_id = Prop.computed __type __id "assessment_id";
       comment = Prop.computed __type __id "comment";
       control_set_id = Prop.computed __type __id "control_set_id";
       delegation_id = Prop.computed __type __id "delegation_id";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       role_type = Prop.computed __type __id "role_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_assessment_delegation
        (aws_auditmanager_assessment_delegation ?comment
           ~assessment_id ~control_set_id ~role_arn ~role_type ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ~assessment_id ~control_set_id
    ~role_arn ~role_type __id =
  let (r : _ Tf_core.resource) =
    make ?comment ~assessment_id ~control_set_id ~role_arn ~role_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
