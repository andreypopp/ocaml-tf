(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector2_enabler__timeouts
type aws_inspector2_enabler

type t = private {
  account_ids : string list prop;
  id : string prop;
  resource_types : string list prop;
}

val aws_inspector2_enabler :
  ?id:string prop ->
  ?timeouts:aws_inspector2_enabler__timeouts ->
  account_ids:string prop list ->
  resource_types:string prop list ->
  string ->
  t
