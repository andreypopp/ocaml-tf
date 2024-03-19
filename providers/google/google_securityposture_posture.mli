(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type policy_sets__policies__compliance_standards

val policy_sets__policies__compliance_standards :
  ?control:string prop ->
  ?standard:string prop ->
  unit ->
  policy_sets__policies__compliance_standards

type policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition

val policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition

type policy_sets__policies__constraint__org_policy_constraint__policy_rules__values

val policy_sets__policies__constraint__org_policy_constraint__policy_rules__values :
  ?allowed_values:string prop list ->
  ?denied_values:string prop list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint__policy_rules__values

type policy_sets__policies__constraint__org_policy_constraint__policy_rules

val policy_sets__policies__constraint__org_policy_constraint__policy_rules :
  ?allow_all:bool prop ->
  ?deny_all:bool prop ->
  ?enforce:bool prop ->
  condition:
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    list ->
  values:
    policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint__policy_rules

type policy_sets__policies__constraint__org_policy_constraint

val policy_sets__policies__constraint__org_policy_constraint :
  canned_constraint_id:string prop ->
  policy_rules:
    policy_sets__policies__constraint__org_policy_constraint__policy_rules
    list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint

type policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint

val policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint :
  ?description:string prop ->
  ?display_name:string prop ->
  action_type:string prop ->
  condition:string prop ->
  method_types:string prop list ->
  name:string prop ->
  resource_types:string prop list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition

val policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values

val policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values :
  ?allowed_values:string prop list ->
  ?denied_values:string prop list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values

type policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules

val policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules :
  ?allow_all:bool prop ->
  ?deny_all:bool prop ->
  ?enforce:bool prop ->
  condition:
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    list ->
  values:
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules

type policy_sets__policies__constraint__org_policy_constraint_custom

val policy_sets__policies__constraint__org_policy_constraint_custom :
  custom_constraint:
    policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    list ->
  policy_rules:
    policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    list ->
  unit ->
  policy_sets__policies__constraint__org_policy_constraint_custom

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression

val policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties

val policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties :
  name:string prop ->
  value_expression:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    list ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output

val policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output :
  properties:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    list ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate

val policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate

type policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector

val policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector :
  resource_types:string prop list ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector

type policy_sets__policies__constraint__security_health_analytics_custom_module__config

val policy_sets__policies__constraint__security_health_analytics_custom_module__config :
  ?description:string prop ->
  ?recommendation:string prop ->
  severity:string prop ->
  custom_output:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    list ->
  predicate:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    list ->
  resource_selector:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    list ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module__config

type policy_sets__policies__constraint__security_health_analytics_custom_module

val policy_sets__policies__constraint__security_health_analytics_custom_module :
  ?display_name:string prop ->
  ?module_enablement_state:string prop ->
  config:
    policy_sets__policies__constraint__security_health_analytics_custom_module__config
    list ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_custom_module

type policy_sets__policies__constraint__security_health_analytics_module

val policy_sets__policies__constraint__security_health_analytics_module :
  ?module_enablement_state:string prop ->
  module_name:string prop ->
  unit ->
  policy_sets__policies__constraint__security_health_analytics_module

type policy_sets__policies__constraint

val policy_sets__policies__constraint :
  org_policy_constraint:
    policy_sets__policies__constraint__org_policy_constraint list ->
  org_policy_constraint_custom:
    policy_sets__policies__constraint__org_policy_constraint_custom
    list ->
  security_health_analytics_custom_module:
    policy_sets__policies__constraint__security_health_analytics_custom_module
    list ->
  security_health_analytics_module:
    policy_sets__policies__constraint__security_health_analytics_module
    list ->
  unit ->
  policy_sets__policies__constraint

type policy_sets__policies

val policy_sets__policies :
  ?description:string prop ->
  policy_id:string prop ->
  compliance_standards:
    policy_sets__policies__compliance_standards list ->
  constraint_:policy_sets__policies__constraint list ->
  unit ->
  policy_sets__policies

type policy_sets

val policy_sets :
  ?description:string prop ->
  policy_set_id:string prop ->
  policies:policy_sets__policies list ->
  unit ->
  policy_sets

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_securityposture_posture

val google_securityposture_posture :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  posture_id:string prop ->
  state:string prop ->
  policy_sets:policy_sets list ->
  unit ->
  google_securityposture_posture

val yojson_of_google_securityposture_posture :
  google_securityposture_posture -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  posture_id : string prop;
  reconciling : bool prop;
  revision_id : string prop;
  state : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  posture_id:string prop ->
  state:string prop ->
  policy_sets:policy_sets list ->
  string ->
  t
