(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type export__data_query

val export__data_query :
  ?table_configurations:(string * (string * string prop) list) list ->
  query_statement:string prop ->
  unit ->
  export__data_query

type export__destination_configurations__s3_destination__s3_output_configurations

val export__destination_configurations__s3_destination__s3_output_configurations :
  compression:string prop ->
  format:string prop ->
  output_type:string prop ->
  overwrite:string prop ->
  unit ->
  export__destination_configurations__s3_destination__s3_output_configurations

type export__destination_configurations__s3_destination

val export__destination_configurations__s3_destination :
  ?s3_output_configurations:
    export__destination_configurations__s3_destination__s3_output_configurations
    list ->
  s3_bucket:string prop ->
  s3_prefix:string prop ->
  s3_region:string prop ->
  unit ->
  export__destination_configurations__s3_destination

type export__destination_configurations

val export__destination_configurations :
  ?s3_destination:
    export__destination_configurations__s3_destination list ->
  unit ->
  export__destination_configurations

type export__refresh_cadence

val export__refresh_cadence :
  frequency:string prop -> unit -> export__refresh_cadence

type export

val export :
  ?description:string prop ->
  ?data_query:export__data_query list ->
  ?destination_configurations:export__destination_configurations list ->
  ?refresh_cadence:export__refresh_cadence list ->
  name:string prop ->
  unit ->
  export

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_bcmdataexports_export

val aws_bcmdataexports_export :
  ?tags:(string * string prop) list ->
  ?export:export list ->
  ?timeouts:timeouts ->
  unit ->
  aws_bcmdataexports_export

val yojson_of_aws_bcmdataexports_export :
  aws_bcmdataexports_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?export:export list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?export:export list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
