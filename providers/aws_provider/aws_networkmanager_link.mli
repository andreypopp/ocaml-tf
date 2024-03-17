(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_link__bandwidth
type aws_networkmanager_link__timeouts
type aws_networkmanager_link

type t = private {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_networkmanager_link :
  ?description:string prop ->
  ?id:string prop ->
  ?provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:aws_networkmanager_link__timeouts ->
  global_network_id:string prop ->
  site_id:string prop ->
  bandwidth:aws_networkmanager_link__bandwidth list ->
  string ->
  t
