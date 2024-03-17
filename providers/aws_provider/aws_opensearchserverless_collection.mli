(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearchserverless_collection__timeouts
type aws_opensearchserverless_collection

type t = private {
  arn : string prop;
  collection_endpoint : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_opensearchserverless_collection :
  ?description:string prop ->
  ?standby_replicas:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_opensearchserverless_collection__timeouts ->
  name:string prop ->
  string ->
  t
