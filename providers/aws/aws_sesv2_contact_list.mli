(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_contact_list__topic
type aws_sesv2_contact_list

type t = private {
  arn : string prop;
  contact_list_name : string prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_updated_timestamp : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sesv2_contact_list :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  contact_list_name:string prop ->
  topic:aws_sesv2_contact_list__topic list ->
  string ->
  t
