(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ssm_maintenance_window

val aws_ssm_maintenance_window :
  ?allow_unassociated_targets:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?end_date:string prop ->
  ?id:string prop ->
  ?schedule_offset:float prop ->
  ?schedule_timezone:string prop ->
  ?start_date:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cutoff:float prop ->
  duration:float prop ->
  name:string prop ->
  schedule:string prop ->
  unit ->
  aws_ssm_maintenance_window

val yojson_of_aws_ssm_maintenance_window :
  aws_ssm_maintenance_window -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_unassociated_targets : bool prop;
  cutoff : float prop;
  description : string prop;
  duration : float prop;
  enabled : bool prop;
  end_date : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  schedule_offset : float prop;
  schedule_timezone : string prop;
  start_date : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_unassociated_targets:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?end_date:string prop ->
  ?id:string prop ->
  ?schedule_offset:float prop ->
  ?schedule_timezone:string prop ->
  ?start_date:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  cutoff:float prop ->
  duration:float prop ->
  name:string prop ->
  schedule:string prop ->
  string ->
  t
