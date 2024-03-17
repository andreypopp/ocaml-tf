(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_product__provisioning_artifact_parameters
type aws_servicecatalog_product__timeouts
type aws_servicecatalog_product

type t = private {
  accept_language : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  distributor : string prop;
  has_default_path : bool prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  status : string prop;
  support_description : string prop;
  support_email : string prop;
  support_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_servicecatalog_product :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?distributor:string prop ->
  ?id:string prop ->
  ?support_description:string prop ->
  ?support_email:string prop ->
  ?support_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_servicecatalog_product__timeouts ->
  name:string prop ->
  owner:string prop ->
  type_:string prop ->
  provisioning_artifact_parameters:
    aws_servicecatalog_product__provisioning_artifact_parameters list ->
  string ->
  t
