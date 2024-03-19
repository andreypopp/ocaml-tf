(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type hierarchy_structure__level_five

val hierarchy_structure__level_five :
  name:string prop -> unit -> hierarchy_structure__level_five

type hierarchy_structure__level_four

val hierarchy_structure__level_four :
  name:string prop -> unit -> hierarchy_structure__level_four

type hierarchy_structure__level_one

val hierarchy_structure__level_one :
  name:string prop -> unit -> hierarchy_structure__level_one

type hierarchy_structure__level_three

val hierarchy_structure__level_three :
  name:string prop -> unit -> hierarchy_structure__level_three

type hierarchy_structure__level_two

val hierarchy_structure__level_two :
  name:string prop -> unit -> hierarchy_structure__level_two

type hierarchy_structure

val hierarchy_structure :
  level_five:hierarchy_structure__level_five list ->
  level_four:hierarchy_structure__level_four list ->
  level_one:hierarchy_structure__level_one list ->
  level_three:hierarchy_structure__level_three list ->
  level_two:hierarchy_structure__level_two list ->
  unit ->
  hierarchy_structure

type aws_connect_user_hierarchy_structure

val aws_connect_user_hierarchy_structure :
  ?id:string prop ->
  instance_id:string prop ->
  hierarchy_structure:hierarchy_structure list ->
  unit ->
  aws_connect_user_hierarchy_structure

val yojson_of_aws_connect_user_hierarchy_structure :
  aws_connect_user_hierarchy_structure -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; instance_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_id:string prop ->
  hierarchy_structure:hierarchy_structure list ->
  string ->
  t
