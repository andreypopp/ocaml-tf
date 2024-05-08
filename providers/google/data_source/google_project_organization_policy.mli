(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type boolean_policy = { enforced : bool prop  (** enforced *) }

type list_policy__deny = {
  all : bool prop;  (** all *)
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** values *)
}

type list_policy__allow = {
  all : bool prop;  (** all *)
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** values *)
}

type list_policy = {
  allow : list_policy__allow list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow *)
  deny : list_policy__deny list;
      [@default []] [@yojson_drop_default ( = )]
      (** deny *)
  inherit_from_parent : bool prop;  (** inherit_from_parent *)
  suggested_value : string prop;  (** suggested_value *)
}

type restore_policy = { default : bool prop  (** default *) }
type google_project_organization_policy

val google_project_organization_policy :
  ?id:string prop ->
  constraint_:string prop ->
  project:string prop ->
  unit ->
  google_project_organization_policy

val yojson_of_google_project_organization_policy :
  google_project_organization_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  boolean_policy : boolean_policy list prop;
  constraint_ : string prop;
  etag : string prop;
  id : string prop;
  list_policy : list_policy list prop;
  project : string prop;
  restore_policy : restore_policy list prop;
  update_time : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  constraint_:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  constraint_:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
