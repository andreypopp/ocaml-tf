(** Provides a Cloudflare DLP Profile resource. Data Loss Prevention profiles
are a set of entries that can be matched in HTTP bodies or files.
They are referenced in Zero Trust Gateway rules.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type entry__pattern

val entry__pattern :
  ?validation:string prop ->
  regex:string prop ->
  unit ->
  entry__pattern

type entry

val entry :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?pattern:entry__pattern list ->
  name:string prop ->
  unit ->
  entry

type cloudflare_dlp_profile

val cloudflare_dlp_profile :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  allowed_match_count:float prop ->
  name:string prop ->
  type_:string prop ->
  entry:entry list ->
  unit ->
  cloudflare_dlp_profile

val yojson_of_cloudflare_dlp_profile : cloudflare_dlp_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  allowed_match_count:float prop ->
  name:string prop ->
  type_:string prop ->
  entry:entry list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  account_id:string prop ->
  allowed_match_count:float prop ->
  name:string prop ->
  type_:string prop ->
  entry:entry list ->
  string ->
  t Tf_core.resource
