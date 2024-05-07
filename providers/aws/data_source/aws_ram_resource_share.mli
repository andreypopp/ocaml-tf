(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ram_resource_share

val aws_ram_resource_share :
  ?id:string prop ->
  ?name:string prop ->
  ?resource_share_status:string prop ->
  ?tags:(string * string prop) list ->
  resource_owner:string prop ->
  filter:filter list ->
  unit ->
  aws_ram_resource_share

val yojson_of_aws_ram_resource_share : aws_ram_resource_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  owning_account_id : string prop;
  resource_arns : string list prop;
  resource_owner : string prop;
  resource_share_status : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?resource_share_status:string prop ->
  ?tags:(string * string prop) list ->
  resource_owner:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?resource_share_status:string prop ->
  ?tags:(string * string prop) list ->
  resource_owner:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
