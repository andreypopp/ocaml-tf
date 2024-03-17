(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_automation_rule__actions__finding_fields_update__note = {
  text : string;  (** text *)
  updated_by : string;  (** updated_by *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions__finding_fields_update__note *)

type aws_securityhub_automation_rule__actions__finding_fields_update__related_findings = {
  id : string;  (** id *)
  product_arn : string;  (** product_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions__finding_fields_update__related_findings *)

type aws_securityhub_automation_rule__actions__finding_fields_update__severity = {
  label : string option; [@option]  (** label *)
  product : float option; [@option]  (** product *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions__finding_fields_update__severity *)

type aws_securityhub_automation_rule__actions__finding_fields_update__workflow = {
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions__finding_fields_update__workflow *)

type aws_securityhub_automation_rule__actions__finding_fields_update = {
  confidence : float option; [@option]  (** confidence *)
  criticality : float option; [@option]  (** criticality *)
  types : string list option; [@option]  (** types *)
  user_defined_fields : (string * string) list option; [@option]
      (** user_defined_fields *)
  verification_state : string option; [@option]
      (** verification_state *)
  note :
    aws_securityhub_automation_rule__actions__finding_fields_update__note
    list;
  related_findings :
    aws_securityhub_automation_rule__actions__finding_fields_update__related_findings
    list;
  severity :
    aws_securityhub_automation_rule__actions__finding_fields_update__severity
    list;
  workflow :
    aws_securityhub_automation_rule__actions__finding_fields_update__workflow
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions__finding_fields_update *)

type aws_securityhub_automation_rule__actions = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  finding_fields_update :
    aws_securityhub_automation_rule__actions__finding_fields_update
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__actions *)

type aws_securityhub_automation_rule__criteria__aws_account_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__aws_account_id *)

type aws_securityhub_automation_rule__criteria__aws_account_name = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__aws_account_name *)

type aws_securityhub_automation_rule__criteria__company_name = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__company_name *)

type aws_securityhub_automation_rule__criteria__compliance_associated_standards_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__compliance_associated_standards_id *)

type aws_securityhub_automation_rule__criteria__compliance_security_control_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__compliance_security_control_id *)

type aws_securityhub_automation_rule__criteria__compliance_status = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__compliance_status *)

type aws_securityhub_automation_rule__criteria__confidence = {
  eq : float option; [@option]  (** eq *)
  gt : float option; [@option]  (** gt *)
  gte : float option; [@option]  (** gte *)
  lt : float option; [@option]  (** lt *)
  lte : float option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__confidence *)

type aws_securityhub_automation_rule__criteria__created_at__date_range = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__created_at__date_range *)

type aws_securityhub_automation_rule__criteria__created_at = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
  date_range :
    aws_securityhub_automation_rule__criteria__created_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__created_at *)

type aws_securityhub_automation_rule__criteria__criticality = {
  eq : float option; [@option]  (** eq *)
  gt : float option; [@option]  (** gt *)
  gte : float option; [@option]  (** gte *)
  lt : float option; [@option]  (** lt *)
  lte : float option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__criticality *)

type aws_securityhub_automation_rule__criteria__description = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__description *)

type aws_securityhub_automation_rule__criteria__first_observed_at__date_range = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__first_observed_at__date_range *)

type aws_securityhub_automation_rule__criteria__first_observed_at = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
  date_range :
    aws_securityhub_automation_rule__criteria__first_observed_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__first_observed_at *)

type aws_securityhub_automation_rule__criteria__generator_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__generator_id *)

type aws_securityhub_automation_rule__criteria__id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__id *)

type aws_securityhub_automation_rule__criteria__last_observed_at__date_range = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__last_observed_at__date_range *)

type aws_securityhub_automation_rule__criteria__last_observed_at = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
  date_range :
    aws_securityhub_automation_rule__criteria__last_observed_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__last_observed_at *)

type aws_securityhub_automation_rule__criteria__note_text = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__note_text *)

type aws_securityhub_automation_rule__criteria__note_updated_at__date_range = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__note_updated_at__date_range *)

type aws_securityhub_automation_rule__criteria__note_updated_at = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
  date_range :
    aws_securityhub_automation_rule__criteria__note_updated_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__note_updated_at *)

type aws_securityhub_automation_rule__criteria__note_updated_by = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__note_updated_by *)

type aws_securityhub_automation_rule__criteria__product_arn = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__product_arn *)

type aws_securityhub_automation_rule__criteria__product_name = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__product_name *)

type aws_securityhub_automation_rule__criteria__record_state = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__record_state *)

type aws_securityhub_automation_rule__criteria__related_findings_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__related_findings_id *)

type aws_securityhub_automation_rule__criteria__related_findings_product_arn = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__related_findings_product_arn *)

type aws_securityhub_automation_rule__criteria__resource_application_arn = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_application_arn *)

type aws_securityhub_automation_rule__criteria__resource_application_name = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_application_name *)

type aws_securityhub_automation_rule__criteria__resource_details_other = {
  comparison : string;  (** comparison *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_details_other *)

type aws_securityhub_automation_rule__criteria__resource_id = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_id *)

type aws_securityhub_automation_rule__criteria__resource_partition = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_partition *)

type aws_securityhub_automation_rule__criteria__resource_region = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_region *)

type aws_securityhub_automation_rule__criteria__resource_tags = {
  comparison : string;  (** comparison *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_tags *)

type aws_securityhub_automation_rule__criteria__resource_type = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__resource_type *)

type aws_securityhub_automation_rule__criteria__severity_label = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__severity_label *)

type aws_securityhub_automation_rule__criteria__source_url = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__source_url *)

type aws_securityhub_automation_rule__criteria__title = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__title *)

type aws_securityhub_automation_rule__criteria__type = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__type *)

type aws_securityhub_automation_rule__criteria__updated_at__date_range = {
  unit : string;  (** unit *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__updated_at__date_range *)

type aws_securityhub_automation_rule__criteria__updated_at = {
  end_ : string option; [@option] [@key "end"]  (** end *)
  start : string option; [@option]  (** start *)
  date_range :
    aws_securityhub_automation_rule__criteria__updated_at__date_range
    list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__updated_at *)

type aws_securityhub_automation_rule__criteria__user_defined_fields = {
  comparison : string;  (** comparison *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__user_defined_fields *)

type aws_securityhub_automation_rule__criteria__verification_state = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__verification_state *)

type aws_securityhub_automation_rule__criteria__workflow_status = {
  comparison : string;  (** comparison *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria__workflow_status *)

type aws_securityhub_automation_rule__criteria = {
  aws_account_id :
    aws_securityhub_automation_rule__criteria__aws_account_id list;
  aws_account_name :
    aws_securityhub_automation_rule__criteria__aws_account_name list;
  company_name :
    aws_securityhub_automation_rule__criteria__company_name list;
  compliance_associated_standards_id :
    aws_securityhub_automation_rule__criteria__compliance_associated_standards_id
    list;
  compliance_security_control_id :
    aws_securityhub_automation_rule__criteria__compliance_security_control_id
    list;
  compliance_status :
    aws_securityhub_automation_rule__criteria__compliance_status list;
  confidence :
    aws_securityhub_automation_rule__criteria__confidence list;
  created_at :
    aws_securityhub_automation_rule__criteria__created_at list;
  criticality :
    aws_securityhub_automation_rule__criteria__criticality list;
  description :
    aws_securityhub_automation_rule__criteria__description list;
  first_observed_at :
    aws_securityhub_automation_rule__criteria__first_observed_at list;
  generator_id :
    aws_securityhub_automation_rule__criteria__generator_id list;
  id : aws_securityhub_automation_rule__criteria__id list;
  last_observed_at :
    aws_securityhub_automation_rule__criteria__last_observed_at list;
  note_text :
    aws_securityhub_automation_rule__criteria__note_text list;
  note_updated_at :
    aws_securityhub_automation_rule__criteria__note_updated_at list;
  note_updated_by :
    aws_securityhub_automation_rule__criteria__note_updated_by list;
  product_arn :
    aws_securityhub_automation_rule__criteria__product_arn list;
  product_name :
    aws_securityhub_automation_rule__criteria__product_name list;
  record_state :
    aws_securityhub_automation_rule__criteria__record_state list;
  related_findings_id :
    aws_securityhub_automation_rule__criteria__related_findings_id
    list;
  related_findings_product_arn :
    aws_securityhub_automation_rule__criteria__related_findings_product_arn
    list;
  resource_application_arn :
    aws_securityhub_automation_rule__criteria__resource_application_arn
    list;
  resource_application_name :
    aws_securityhub_automation_rule__criteria__resource_application_name
    list;
  resource_details_other :
    aws_securityhub_automation_rule__criteria__resource_details_other
    list;
  resource_id :
    aws_securityhub_automation_rule__criteria__resource_id list;
  resource_partition :
    aws_securityhub_automation_rule__criteria__resource_partition
    list;
  resource_region :
    aws_securityhub_automation_rule__criteria__resource_region list;
  resource_tags :
    aws_securityhub_automation_rule__criteria__resource_tags list;
  resource_type :
    aws_securityhub_automation_rule__criteria__resource_type list;
  severity_label :
    aws_securityhub_automation_rule__criteria__severity_label list;
  source_url :
    aws_securityhub_automation_rule__criteria__source_url list;
  title : aws_securityhub_automation_rule__criteria__title list;
  type_ : aws_securityhub_automation_rule__criteria__type list;
  updated_at :
    aws_securityhub_automation_rule__criteria__updated_at list;
  user_defined_fields :
    aws_securityhub_automation_rule__criteria__user_defined_fields
    list;
  verification_state :
    aws_securityhub_automation_rule__criteria__verification_state
    list;
  workflow_status :
    aws_securityhub_automation_rule__criteria__workflow_status list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule__criteria *)

type aws_securityhub_automation_rule = {
  description : string;  (** description *)
  is_terminal : bool option; [@option]  (** is_terminal *)
  rule_name : string;  (** rule_name *)
  rule_order : float;  (** rule_order *)
  rule_status : string option; [@option]  (** rule_status *)
  tags : (string * string) list option; [@option]  (** tags *)
  actions : aws_securityhub_automation_rule__actions list;
  criteria : aws_securityhub_automation_rule__criteria list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule *)

let aws_securityhub_automation_rule ?is_terminal ?rule_status ?tags
    ~description ~rule_name ~rule_order ~actions ~criteria
    __resource_id =
  let __resource_type = "aws_securityhub_automation_rule" in
  let __resource =
    {
      description;
      is_terminal;
      rule_name;
      rule_order;
      rule_status;
      tags;
      actions;
      criteria;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_automation_rule __resource);
  ()
