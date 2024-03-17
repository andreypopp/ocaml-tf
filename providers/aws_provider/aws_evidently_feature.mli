(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_feature__timeouts
type aws_evidently_feature__variations__value
type aws_evidently_feature__variations

type aws_evidently_feature__evaluation_rules = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_evidently_feature

val aws_evidently_feature :
  ?default_variation:string prop ->
  ?description:string prop ->
  ?entity_overrides:(string * string prop) list ->
  ?evaluation_strategy:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_evidently_feature__timeouts ->
  name:string prop ->
  project:string prop ->
  variations:aws_evidently_feature__variations list ->
  string ->
  unit
