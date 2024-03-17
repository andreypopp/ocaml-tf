(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_resourceexplorer2_index__timeouts
type aws_resourceexplorer2_index

type t = private {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_resourceexplorer2_index :
  ?tags:(string * string prop) list ->
  ?timeouts:aws_resourceexplorer2_index__timeouts ->
  type_:string prop ->
  string ->
  t
