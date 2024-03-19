(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type actions__finding_fields_update__note = {
  text : string prop;  (** text *)
  updated_by : string prop;  (** updated_by *)
}
[@@deriving yojson_of]
(** actions__finding_fields_update__note *)

type actions__finding_fields_update__related_findings = {
  id : string prop;  (** id *)
  product_arn : string prop;  (** product_arn *)
}
[@@deriving yojson_of]
(** actions__finding_fields_update__related_findings *)

type actions__finding_fields_update__severity = {
  label : string prop option; [@option]  (** label *)
  product : float prop option; [@option]  (** product *)
}
[@@deriving yojson_of]
(** actions__finding_fields_update__severity *)

type actions__finding_fields_update__workflow = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** actions__finding_fields_update__workflow *)

type actions__finding_fields_update = {
  confidence : float prop option; [@option]  (** confidence *)
  criticality : float prop option; [@option]  (** criticality *)
  types : string prop list option; [@option]  (** types *)
  user_defined_fields : (string * string prop) list option; [@option]
      (** user_defined_fields *)
  verification_state : string prop option; [@option]
      (** verification_state *)
  note : actions__finding_fields_update__note list;
  related_findings :
    actions__finding_fields_update__related_findings list;
  severity : actions__finding_fields_update__severity list;
  workflow : actions__finding_fields_update__workflow list;
}
[@@deriving yojson_of]
(** actions__finding_fields_update *)

type actions = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  finding_fields_update : actions__finding_fields_update list;
}
[@@deriving yojson_of]
(** actions *)

type criteria__aws_account_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__aws_account_id *)

type criteria__aws_account_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__aws_account_name *)

type criteria__company_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__company_name *)

type criteria__compliance_associated_standards_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__compliance_associated_standards_id *)

type criteria__compliance_security_control_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__compliance_security_control_id *)

type criteria__compliance_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__compliance_status *)

type criteria__confidence = {
  eq : float prop option; [@option]  (** eq *)
  gt : float prop option; [@option]  (** gt *)
  gte : float prop option; [@option]  (** gte *)
  lt : float prop option; [@option]  (** lt *)
  lte : float prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** criteria__confidence *)

type criteria__created_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__created_at__date_range *)

type criteria__created_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : criteria__created_at__date_range list;
}
[@@deriving yojson_of]
(** criteria__created_at *)

type criteria__criticality = {
  eq : float prop option; [@option]  (** eq *)
  gt : float prop option; [@option]  (** gt *)
  gte : float prop option; [@option]  (** gte *)
  lt : float prop option; [@option]  (** lt *)
  lte : float prop option; [@option]  (** lte *)
}
[@@deriving yojson_of]
(** criteria__criticality *)

type criteria__description = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__description *)

type criteria__first_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__first_observed_at__date_range *)

type criteria__first_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : criteria__first_observed_at__date_range list;
}
[@@deriving yojson_of]
(** criteria__first_observed_at *)

type criteria__generator_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__generator_id *)

type criteria__id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__id *)

type criteria__last_observed_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__last_observed_at__date_range *)

type criteria__last_observed_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : criteria__last_observed_at__date_range list;
}
[@@deriving yojson_of]
(** criteria__last_observed_at *)

type criteria__note_text = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__note_text *)

type criteria__note_updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__note_updated_at__date_range *)

type criteria__note_updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : criteria__note_updated_at__date_range list;
}
[@@deriving yojson_of]
(** criteria__note_updated_at *)

type criteria__note_updated_by = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__note_updated_by *)

type criteria__product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__product_arn *)

type criteria__product_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__product_name *)

type criteria__record_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__record_state *)

type criteria__related_findings_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__related_findings_id *)

type criteria__related_findings_product_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__related_findings_product_arn *)

type criteria__resource_application_arn = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_application_arn *)

type criteria__resource_application_name = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_application_name *)

type criteria__resource_details_other = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_details_other *)

type criteria__resource_id = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_id *)

type criteria__resource_partition = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_partition *)

type criteria__resource_region = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_region *)

type criteria__resource_tags = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_tags *)

type criteria__resource_type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__resource_type *)

type criteria__severity_label = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__severity_label *)

type criteria__source_url = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__source_url *)

type criteria__title = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__title *)

type criteria__type = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__type *)

type criteria__updated_at__date_range = {
  unit : string prop;  (** unit *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__updated_at__date_range *)

type criteria__updated_at = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
  date_range : criteria__updated_at__date_range list;
}
[@@deriving yojson_of]
(** criteria__updated_at *)

type criteria__user_defined_fields = {
  comparison : string prop;  (** comparison *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__user_defined_fields *)

type criteria__verification_state = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__verification_state *)

type criteria__workflow_status = {
  comparison : string prop;  (** comparison *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** criteria__workflow_status *)

type criteria = {
  aws_account_id : criteria__aws_account_id list;
  aws_account_name : criteria__aws_account_name list;
  company_name : criteria__company_name list;
  compliance_associated_standards_id :
    criteria__compliance_associated_standards_id list;
  compliance_security_control_id :
    criteria__compliance_security_control_id list;
  compliance_status : criteria__compliance_status list;
  confidence : criteria__confidence list;
  created_at : criteria__created_at list;
  criticality : criteria__criticality list;
  description : criteria__description list;
  first_observed_at : criteria__first_observed_at list;
  generator_id : criteria__generator_id list;
  id : criteria__id list;
  last_observed_at : criteria__last_observed_at list;
  note_text : criteria__note_text list;
  note_updated_at : criteria__note_updated_at list;
  note_updated_by : criteria__note_updated_by list;
  product_arn : criteria__product_arn list;
  product_name : criteria__product_name list;
  record_state : criteria__record_state list;
  related_findings_id : criteria__related_findings_id list;
  related_findings_product_arn :
    criteria__related_findings_product_arn list;
  resource_application_arn : criteria__resource_application_arn list;
  resource_application_name :
    criteria__resource_application_name list;
  resource_details_other : criteria__resource_details_other list;
  resource_id : criteria__resource_id list;
  resource_partition : criteria__resource_partition list;
  resource_region : criteria__resource_region list;
  resource_tags : criteria__resource_tags list;
  resource_type : criteria__resource_type list;
  severity_label : criteria__severity_label list;
  source_url : criteria__source_url list;
  title : criteria__title list;
  type_ : criteria__type list;
  updated_at : criteria__updated_at list;
  user_defined_fields : criteria__user_defined_fields list;
  verification_state : criteria__verification_state list;
  workflow_status : criteria__workflow_status list;
}
[@@deriving yojson_of]
(** criteria *)

type aws_securityhub_automation_rule = {
  description : string prop;  (** description *)
  is_terminal : bool prop option; [@option]  (** is_terminal *)
  rule_name : string prop;  (** rule_name *)
  rule_order : float prop;  (** rule_order *)
  rule_status : string prop option; [@option]  (** rule_status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  actions : actions list;
  criteria : criteria list;
}
[@@deriving yojson_of]
(** aws_securityhub_automation_rule *)

let actions__finding_fields_update__note ~text ~updated_by () :
    actions__finding_fields_update__note =
  { text; updated_by }

let actions__finding_fields_update__related_findings ~id ~product_arn
    () : actions__finding_fields_update__related_findings =
  { id; product_arn }

let actions__finding_fields_update__severity ?label ?product () :
    actions__finding_fields_update__severity =
  { label; product }

let actions__finding_fields_update__workflow ?status () :
    actions__finding_fields_update__workflow =
  { status }

let actions__finding_fields_update ?confidence ?criticality ?types
    ?user_defined_fields ?verification_state ~note ~related_findings
    ~severity ~workflow () : actions__finding_fields_update =
  {
    confidence;
    criticality;
    types;
    user_defined_fields;
    verification_state;
    note;
    related_findings;
    severity;
    workflow;
  }

let actions ?type_ ~finding_fields_update () : actions =
  { type_; finding_fields_update }

let criteria__aws_account_id ~comparison ~value () :
    criteria__aws_account_id =
  { comparison; value }

let criteria__aws_account_name ~comparison ~value () :
    criteria__aws_account_name =
  { comparison; value }

let criteria__company_name ~comparison ~value () :
    criteria__company_name =
  { comparison; value }

let criteria__compliance_associated_standards_id ~comparison ~value
    () : criteria__compliance_associated_standards_id =
  { comparison; value }

let criteria__compliance_security_control_id ~comparison ~value () :
    criteria__compliance_security_control_id =
  { comparison; value }

let criteria__compliance_status ~comparison ~value () :
    criteria__compliance_status =
  { comparison; value }

let criteria__confidence ?eq ?gt ?gte ?lt ?lte () :
    criteria__confidence =
  { eq; gt; gte; lt; lte }

let criteria__created_at__date_range ~unit ~value () :
    criteria__created_at__date_range =
  { unit; value }

let criteria__created_at ?end_ ?start ~date_range () :
    criteria__created_at =
  { end_; start; date_range }

let criteria__criticality ?eq ?gt ?gte ?lt ?lte () :
    criteria__criticality =
  { eq; gt; gte; lt; lte }

let criteria__description ~comparison ~value () :
    criteria__description =
  { comparison; value }

let criteria__first_observed_at__date_range ~unit ~value () :
    criteria__first_observed_at__date_range =
  { unit; value }

let criteria__first_observed_at ?end_ ?start ~date_range () :
    criteria__first_observed_at =
  { end_; start; date_range }

let criteria__generator_id ~comparison ~value () :
    criteria__generator_id =
  { comparison; value }

let criteria__id ~comparison ~value () : criteria__id =
  { comparison; value }

let criteria__last_observed_at__date_range ~unit ~value () :
    criteria__last_observed_at__date_range =
  { unit; value }

let criteria__last_observed_at ?end_ ?start ~date_range () :
    criteria__last_observed_at =
  { end_; start; date_range }

let criteria__note_text ~comparison ~value () : criteria__note_text =
  { comparison; value }

let criteria__note_updated_at__date_range ~unit ~value () :
    criteria__note_updated_at__date_range =
  { unit; value }

let criteria__note_updated_at ?end_ ?start ~date_range () :
    criteria__note_updated_at =
  { end_; start; date_range }

let criteria__note_updated_by ~comparison ~value () :
    criteria__note_updated_by =
  { comparison; value }

let criteria__product_arn ~comparison ~value () :
    criteria__product_arn =
  { comparison; value }

let criteria__product_name ~comparison ~value () :
    criteria__product_name =
  { comparison; value }

let criteria__record_state ~comparison ~value () :
    criteria__record_state =
  { comparison; value }

let criteria__related_findings_id ~comparison ~value () :
    criteria__related_findings_id =
  { comparison; value }

let criteria__related_findings_product_arn ~comparison ~value () :
    criteria__related_findings_product_arn =
  { comparison; value }

let criteria__resource_application_arn ~comparison ~value () :
    criteria__resource_application_arn =
  { comparison; value }

let criteria__resource_application_name ~comparison ~value () :
    criteria__resource_application_name =
  { comparison; value }

let criteria__resource_details_other ~comparison ~key ~value () :
    criteria__resource_details_other =
  { comparison; key; value }

let criteria__resource_id ~comparison ~value () :
    criteria__resource_id =
  { comparison; value }

let criteria__resource_partition ~comparison ~value () :
    criteria__resource_partition =
  { comparison; value }

let criteria__resource_region ~comparison ~value () :
    criteria__resource_region =
  { comparison; value }

let criteria__resource_tags ~comparison ~key ~value () :
    criteria__resource_tags =
  { comparison; key; value }

let criteria__resource_type ~comparison ~value () :
    criteria__resource_type =
  { comparison; value }

let criteria__severity_label ~comparison ~value () :
    criteria__severity_label =
  { comparison; value }

let criteria__source_url ~comparison ~value () : criteria__source_url
    =
  { comparison; value }

let criteria__title ~comparison ~value () : criteria__title =
  { comparison; value }

let criteria__type ~comparison ~value () : criteria__type =
  { comparison; value }

let criteria__updated_at__date_range ~unit ~value () :
    criteria__updated_at__date_range =
  { unit; value }

let criteria__updated_at ?end_ ?start ~date_range () :
    criteria__updated_at =
  { end_; start; date_range }

let criteria__user_defined_fields ~comparison ~key ~value () :
    criteria__user_defined_fields =
  { comparison; key; value }

let criteria__verification_state ~comparison ~value () :
    criteria__verification_state =
  { comparison; value }

let criteria__workflow_status ~comparison ~value () :
    criteria__workflow_status =
  { comparison; value }

let criteria ~aws_account_id ~aws_account_name ~company_name
    ~compliance_associated_standards_id
    ~compliance_security_control_id ~compliance_status ~confidence
    ~created_at ~criticality ~description ~first_observed_at
    ~generator_id ~id ~last_observed_at ~note_text ~note_updated_at
    ~note_updated_by ~product_arn ~product_name ~record_state
    ~related_findings_id ~related_findings_product_arn
    ~resource_application_arn ~resource_application_name
    ~resource_details_other ~resource_id ~resource_partition
    ~resource_region ~resource_tags ~resource_type ~severity_label
    ~source_url ~title ~type_ ~updated_at ~user_defined_fields
    ~verification_state ~workflow_status () : criteria =
  {
    aws_account_id;
    aws_account_name;
    company_name;
    compliance_associated_standards_id;
    compliance_security_control_id;
    compliance_status;
    confidence;
    created_at;
    criticality;
    description;
    first_observed_at;
    generator_id;
    id;
    last_observed_at;
    note_text;
    note_updated_at;
    note_updated_by;
    product_arn;
    product_name;
    record_state;
    related_findings_id;
    related_findings_product_arn;
    resource_application_arn;
    resource_application_name;
    resource_details_other;
    resource_id;
    resource_partition;
    resource_region;
    resource_tags;
    resource_type;
    severity_label;
    source_url;
    title;
    type_;
    updated_at;
    user_defined_fields;
    verification_state;
    workflow_status;
  }

let aws_securityhub_automation_rule ?is_terminal ?rule_status ?tags
    ~description ~rule_name ~rule_order ~actions ~criteria () :
    aws_securityhub_automation_rule =
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

type t = {
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

let register ?tf_module ?is_terminal ?rule_status ?tags ~description
    ~rule_name ~rule_order ~actions ~criteria __resource_id =
  let __resource_type = "aws_securityhub_automation_rule" in
  let __resource =
    aws_securityhub_automation_rule ?is_terminal ?rule_status ?tags
      ~description ~rule_name ~rule_order ~actions ~criteria ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_automation_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       is_terminal =
         Prop.computed __resource_type __resource_id "is_terminal";
       rule_name =
         Prop.computed __resource_type __resource_id "rule_name";
       rule_order =
         Prop.computed __resource_type __resource_id "rule_order";
       rule_status =
         Prop.computed __resource_type __resource_id "rule_status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
