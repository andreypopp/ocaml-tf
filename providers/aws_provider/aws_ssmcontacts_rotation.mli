(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_rotation__recurrence__daily_settings

type aws_ssmcontacts_rotation__recurrence__monthly_settings__hand_off_time

type aws_ssmcontacts_rotation__recurrence__monthly_settings

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__end

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times__start

type aws_ssmcontacts_rotation__recurrence__shift_coverages__coverage_times

type aws_ssmcontacts_rotation__recurrence__shift_coverages

type aws_ssmcontacts_rotation__recurrence__weekly_settings__hand_off_time

type aws_ssmcontacts_rotation__recurrence__weekly_settings
type aws_ssmcontacts_rotation__recurrence
type aws_ssmcontacts_rotation

val aws_ssmcontacts_rotation :
  ?start_time:string prop ->
  ?tags:(string * string prop) list ->
  contact_ids:string prop list ->
  name:string prop ->
  time_zone_id:string prop ->
  recurrence:aws_ssmcontacts_rotation__recurrence list ->
  string ->
  unit
