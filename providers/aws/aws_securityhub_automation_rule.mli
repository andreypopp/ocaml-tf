(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type actions__finding_fields_update__note

val actions__finding_fields_update__note :
  text:string prop ->
  updated_by:string prop ->
  unit ->
  actions__finding_fields_update__note

type actions__finding_fields_update__related_findings

val actions__finding_fields_update__related_findings :
  id:string prop ->
  product_arn:string prop ->
  unit ->
  actions__finding_fields_update__related_findings

type actions__finding_fields_update__severity

val actions__finding_fields_update__severity :
  ?label:string prop ->
  ?product:float prop ->
  unit ->
  actions__finding_fields_update__severity

type actions__finding_fields_update__workflow

val actions__finding_fields_update__workflow :
  ?status:string prop ->
  unit ->
  actions__finding_fields_update__workflow

type actions__finding_fields_update

val actions__finding_fields_update :
  ?confidence:float prop ->
  ?criticality:float prop ->
  ?types:string prop list ->
  ?user_defined_fields:(string * string prop) list ->
  ?verification_state:string prop ->
  ?note:actions__finding_fields_update__note list ->
  ?severity:actions__finding_fields_update__severity list ->
  ?workflow:actions__finding_fields_update__workflow list ->
  related_findings:
    actions__finding_fields_update__related_findings list ->
  unit ->
  actions__finding_fields_update

type actions

val actions :
  ?type_:string prop ->
  ?finding_fields_update:actions__finding_fields_update list ->
  unit ->
  actions

type criteria__aws_account_id

val criteria__aws_account_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__aws_account_id

type criteria__aws_account_name

val criteria__aws_account_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__aws_account_name

type criteria__company_name

val criteria__company_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__company_name

type criteria__compliance_associated_standards_id

val criteria__compliance_associated_standards_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__compliance_associated_standards_id

type criteria__compliance_security_control_id

val criteria__compliance_security_control_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__compliance_security_control_id

type criteria__compliance_status

val criteria__compliance_status :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__compliance_status

type criteria__confidence

val criteria__confidence :
  ?eq:float prop ->
  ?gt:float prop ->
  ?gte:float prop ->
  ?lt:float prop ->
  ?lte:float prop ->
  unit ->
  criteria__confidence

type criteria__created_at__date_range

val criteria__created_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  criteria__created_at__date_range

type criteria__created_at

val criteria__created_at :
  ?end_:string prop ->
  ?start:string prop ->
  ?date_range:criteria__created_at__date_range list ->
  unit ->
  criteria__created_at

type criteria__criticality

val criteria__criticality :
  ?eq:float prop ->
  ?gt:float prop ->
  ?gte:float prop ->
  ?lt:float prop ->
  ?lte:float prop ->
  unit ->
  criteria__criticality

type criteria__description

val criteria__description :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__description

type criteria__first_observed_at__date_range

val criteria__first_observed_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  criteria__first_observed_at__date_range

type criteria__first_observed_at

val criteria__first_observed_at :
  ?end_:string prop ->
  ?start:string prop ->
  ?date_range:criteria__first_observed_at__date_range list ->
  unit ->
  criteria__first_observed_at

type criteria__generator_id

val criteria__generator_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__generator_id

type criteria__id

val criteria__id :
  comparison:string prop -> value:string prop -> unit -> criteria__id

type criteria__last_observed_at__date_range

val criteria__last_observed_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  criteria__last_observed_at__date_range

type criteria__last_observed_at

val criteria__last_observed_at :
  ?end_:string prop ->
  ?start:string prop ->
  ?date_range:criteria__last_observed_at__date_range list ->
  unit ->
  criteria__last_observed_at

type criteria__note_text

val criteria__note_text :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__note_text

type criteria__note_updated_at__date_range

val criteria__note_updated_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  criteria__note_updated_at__date_range

type criteria__note_updated_at

val criteria__note_updated_at :
  ?end_:string prop ->
  ?start:string prop ->
  ?date_range:criteria__note_updated_at__date_range list ->
  unit ->
  criteria__note_updated_at

type criteria__note_updated_by

val criteria__note_updated_by :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__note_updated_by

type criteria__product_arn

val criteria__product_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__product_arn

type criteria__product_name

val criteria__product_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__product_name

type criteria__record_state

val criteria__record_state :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__record_state

type criteria__related_findings_id

val criteria__related_findings_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__related_findings_id

type criteria__related_findings_product_arn

val criteria__related_findings_product_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__related_findings_product_arn

type criteria__resource_application_arn

val criteria__resource_application_arn :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_application_arn

type criteria__resource_application_name

val criteria__resource_application_name :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_application_name

type criteria__resource_details_other

val criteria__resource_details_other :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_details_other

type criteria__resource_id

val criteria__resource_id :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_id

type criteria__resource_partition

val criteria__resource_partition :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_partition

type criteria__resource_region

val criteria__resource_region :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_region

type criteria__resource_tags

val criteria__resource_tags :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_tags

type criteria__resource_type

val criteria__resource_type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__resource_type

type criteria__severity_label

val criteria__severity_label :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__severity_label

type criteria__source_url

val criteria__source_url :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__source_url

type criteria__title

val criteria__title :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__title

type criteria__type

val criteria__type :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__type

type criteria__updated_at__date_range

val criteria__updated_at__date_range :
  unit:string prop ->
  value:float prop ->
  unit ->
  criteria__updated_at__date_range

type criteria__updated_at

val criteria__updated_at :
  ?end_:string prop ->
  ?start:string prop ->
  ?date_range:criteria__updated_at__date_range list ->
  unit ->
  criteria__updated_at

type criteria__user_defined_fields

val criteria__user_defined_fields :
  comparison:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  criteria__user_defined_fields

type criteria__verification_state

val criteria__verification_state :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__verification_state

type criteria__workflow_status

val criteria__workflow_status :
  comparison:string prop ->
  value:string prop ->
  unit ->
  criteria__workflow_status

type criteria

val criteria :
  aws_account_id:criteria__aws_account_id list ->
  aws_account_name:criteria__aws_account_name list ->
  company_name:criteria__company_name list ->
  compliance_associated_standards_id:
    criteria__compliance_associated_standards_id list ->
  compliance_security_control_id:
    criteria__compliance_security_control_id list ->
  compliance_status:criteria__compliance_status list ->
  confidence:criteria__confidence list ->
  created_at:criteria__created_at list ->
  criticality:criteria__criticality list ->
  description:criteria__description list ->
  first_observed_at:criteria__first_observed_at list ->
  generator_id:criteria__generator_id list ->
  id:criteria__id list ->
  last_observed_at:criteria__last_observed_at list ->
  note_text:criteria__note_text list ->
  note_updated_at:criteria__note_updated_at list ->
  note_updated_by:criteria__note_updated_by list ->
  product_arn:criteria__product_arn list ->
  product_name:criteria__product_name list ->
  record_state:criteria__record_state list ->
  related_findings_id:criteria__related_findings_id list ->
  related_findings_product_arn:
    criteria__related_findings_product_arn list ->
  resource_application_arn:criteria__resource_application_arn list ->
  resource_application_name:criteria__resource_application_name list ->
  resource_details_other:criteria__resource_details_other list ->
  resource_id:criteria__resource_id list ->
  resource_partition:criteria__resource_partition list ->
  resource_region:criteria__resource_region list ->
  resource_tags:criteria__resource_tags list ->
  resource_type:criteria__resource_type list ->
  severity_label:criteria__severity_label list ->
  source_url:criteria__source_url list ->
  title:criteria__title list ->
  type_:criteria__type list ->
  updated_at:criteria__updated_at list ->
  user_defined_fields:criteria__user_defined_fields list ->
  verification_state:criteria__verification_state list ->
  workflow_status:criteria__workflow_status list ->
  unit ->
  criteria

type aws_securityhub_automation_rule

val aws_securityhub_automation_rule :
  ?is_terminal:bool prop ->
  ?rule_status:string prop ->
  ?tags:(string * string prop) list ->
  ?criteria:criteria list ->
  description:string prop ->
  rule_name:string prop ->
  rule_order:float prop ->
  actions:actions list ->
  unit ->
  aws_securityhub_automation_rule

val yojson_of_aws_securityhub_automation_rule :
  aws_securityhub_automation_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  is_terminal : bool prop;
  rule_name : string prop;
  rule_order : float prop;
  rule_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?is_terminal:bool prop ->
  ?rule_status:string prop ->
  ?tags:(string * string prop) list ->
  ?criteria:criteria list ->
  description:string prop ->
  rule_name:string prop ->
  rule_order:float prop ->
  actions:actions list ->
  string ->
  t

val make :
  ?is_terminal:bool prop ->
  ?rule_status:string prop ->
  ?tags:(string * string prop) list ->
  ?criteria:criteria list ->
  description:string prop ->
  rule_name:string prop ->
  rule_order:float prop ->
  actions:actions list ->
  string ->
  t Tf_core.resource
