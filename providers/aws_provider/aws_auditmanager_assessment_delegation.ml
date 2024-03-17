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
    ~control_set_id ~role_arn ~role_type __resource_id =
  let __resource_type = "aws_auditmanager_assessment_delegation" in
  let __resource =
    { assessment_id; comment; control_set_id; role_arn; role_type }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_assessment_delegation __resource);
  ()
