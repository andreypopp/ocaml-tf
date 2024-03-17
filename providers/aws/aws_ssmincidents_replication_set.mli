(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmincidents_replication_set__region
type aws_ssmincidents_replication_set__timeouts
type aws_ssmincidents_replication_set

type t = private {
  arn : string prop;
  created_by : string prop;
  deletion_protected : bool prop;
  id : string prop;
  last_modified_by : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ssmincidents_replication_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ssmincidents_replication_set__timeouts ->
  region:aws_ssmincidents_replication_set__region list ->
  string ->
  t
