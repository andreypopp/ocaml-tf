(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_organizations_access__timeouts
type aws_servicecatalog_organizations_access
type t = private { enabled : bool prop; id : string prop }

val aws_servicecatalog_organizations_access :
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_organizations_access__timeouts ->
  enabled:bool prop ->
  string ->
  t
