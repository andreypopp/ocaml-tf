(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_feature__timeouts
type aws_evidently_feature__variations__value
type aws_evidently_feature__variations

type aws_evidently_feature__evaluation_rules = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_evidently_feature

val aws_evidently_feature :
  ?description:string ->
  ?entity_overrides:(string * string) list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_evidently_feature__timeouts ->
  name:string ->
  project:string ->
  variations:aws_evidently_feature__variations list ->
  string ->
  unit
