(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule__action

val rule__action : type_:string prop -> unit -> rule__action

type rule__selection

val rule__selection :
  ?count_unit:string prop ->
  ?tag_pattern_list:string prop list ->
  ?tag_prefix_list:string prop list ->
  count_number:float prop ->
  count_type:string prop ->
  tag_status:string prop ->
  unit ->
  rule__selection

type rule

val rule :
  ?description:string prop ->
  ?action:rule__action list ->
  ?selection:rule__selection list ->
  priority:float prop ->
  unit ->
  rule

type aws_ecr_lifecycle_policy_document

val aws_ecr_lifecycle_policy_document :
  ?rule:rule list -> unit -> aws_ecr_lifecycle_policy_document

val yojson_of_aws_ecr_lifecycle_policy_document :
  aws_ecr_lifecycle_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; json : string prop }

val register : ?tf_module:tf_module -> ?rule:rule list -> string -> t
val make : ?rule:rule list -> string -> t Tf_core.resource
