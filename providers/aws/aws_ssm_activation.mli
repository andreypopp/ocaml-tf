(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_activation

type t = private {
  activation_code : string prop;
  description : string prop;
  expiration_date : string prop;
  expired : bool prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  registration_count : float prop;
  registration_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ssm_activation :
  ?description:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?registration_limit:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  iam_role:string prop ->
  string ->
  t
