(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_billing_budget__all_updates_rule
type google_billing_budget__amount__specified_amount
type google_billing_budget__amount
type google_billing_budget__budget_filter__custom_period__end_date
type google_billing_budget__budget_filter__custom_period__start_date
type google_billing_budget__budget_filter__custom_period
type google_billing_budget__budget_filter
type google_billing_budget__threshold_rules
type google_billing_budget__timeouts
type google_billing_budget

val google_billing_budget :
  ?display_name:string ->
  ?id:string ->
  ?timeouts:google_billing_budget__timeouts ->
  billing_account:string ->
  all_updates_rule:google_billing_budget__all_updates_rule list ->
  amount:google_billing_budget__amount list ->
  budget_filter:google_billing_budget__budget_filter list ->
  threshold_rules:google_billing_budget__threshold_rules list ->
  string ->
  unit
