(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cutoff:float prop ->
  duration:float prop ->
  name:string prop ->
  schedule:string prop ->
  string ->
  t

val make :
  ?allow_unassociated_targets:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?end_date:string prop ->
  ?id:string prop ->
  ?schedule_offset:float prop ->
  ?schedule_timezone:string prop ->
  ?start_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cutoff:float prop ->
  duration:float prop ->
  name:string prop ->
  schedule:string prop ->
  string ->
  t Tf_core.resource
