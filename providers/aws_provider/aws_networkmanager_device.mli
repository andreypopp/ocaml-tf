(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_networkmanager_device__aws_location
type aws_networkmanager_device__location
type aws_networkmanager_device__timeouts
type aws_networkmanager_device

type t = private {
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  vendor : string prop;
}

val aws_networkmanager_device :
  ?description:string prop ->
  ?id:string prop ->
  ?model:string prop ->
  ?serial_number:string prop ->
  ?site_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?vendor:string prop ->
  ?timeouts:aws_networkmanager_device__timeouts ->
  global_network_id:string prop ->
  aws_location:aws_networkmanager_device__aws_location list ->
  location:aws_networkmanager_device__location list ->
  string ->
  t
