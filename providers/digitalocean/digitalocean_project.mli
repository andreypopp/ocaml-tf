(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_project__timeouts
type digitalocean_project

type t = private {
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

val digitalocean_project :
  ?description:string prop ->
  ?environment:string prop ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?purpose:string prop ->
  ?resources:string prop list ->
  ?timeouts:digitalocean_project__timeouts ->
  name:string prop ->
  string ->
  t
