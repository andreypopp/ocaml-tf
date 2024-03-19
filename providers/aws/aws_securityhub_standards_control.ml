(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_standards_control = {
  control_status : string prop;  (** control_status *)
  disabled_reason : string prop option; [@option]
      (** disabled_reason *)
  id : string prop option; [@option]  (** id *)
  standards_control_arn : string prop;  (** standards_control_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_control *)

let aws_securityhub_standards_control ?disabled_reason ?id
    ~control_status ~standards_control_arn () :
    aws_securityhub_standards_control =
  { control_status; disabled_reason; id; standards_control_arn }

type t = {
  control_id : string prop;
  control_status : string prop;
  control_status_updated_at : string prop;
  description : string prop;
  disabled_reason : string prop;
  id : string prop;
  related_requirements : string list prop;
  remediation_url : string prop;
  severity_rating : string prop;
  standards_control_arn : string prop;
  title : string prop;
}

let register ?tf_module ?disabled_reason ?id ~control_status
    ~standards_control_arn __resource_id =
  let __resource_type = "aws_securityhub_standards_control" in
  let __resource =
    aws_securityhub_standards_control ?disabled_reason ?id
      ~control_status ~standards_control_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_standards_control __resource);
  let __resource_attributes =
    ({
       control_id =
         Prop.computed __resource_type __resource_id "control_id";
       control_status =
         Prop.computed __resource_type __resource_id "control_status";
       control_status_updated_at =
         Prop.computed __resource_type __resource_id
           "control_status_updated_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       disabled_reason =
         Prop.computed __resource_type __resource_id
           "disabled_reason";
       id = Prop.computed __resource_type __resource_id "id";
       related_requirements =
         Prop.computed __resource_type __resource_id
           "related_requirements";
       remediation_url =
         Prop.computed __resource_type __resource_id
           "remediation_url";
       severity_rating =
         Prop.computed __resource_type __resource_id
           "severity_rating";
       standards_control_arn =
         Prop.computed __resource_type __resource_id
           "standards_control_arn";
       title = Prop.computed __resource_type __resource_id "title";
     }
      : t)
  in
  __resource_attributes
