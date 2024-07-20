(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attributes__operator_owners = {
  display_name : string prop;  (** display_name *)
  email : string prop;  (** email *)
}

type attributes__environment = {
  type_ : string prop; [@key "type"]  (** type *)
}

type attributes__developer_owners = {
  display_name : string prop;  (** display_name *)
  email : string prop;  (** email *)
}

type attributes__criticality = {
  type_ : string prop; [@key "type"]  (** type *)
}

type attributes__business_owners = {
  display_name : string prop;  (** display_name *)
  email : string prop;  (** email *)
}

type attributes = {
  business_owners : attributes__business_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** business_owners *)
  criticality : attributes__criticality list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** criticality *)
  developer_owners : attributes__developer_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** developer_owners *)
  environment : attributes__environment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** environment *)
  operator_owners : attributes__operator_owners list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** operator_owners *)
}

type scope = { type_ : string prop [@key "type"]  (** type *) }
type google_apphub_application

val google_apphub_application :
  ?id:string prop ->
  application_id:string prop ->
  location:string prop ->
  project:string prop ->
  unit ->
  google_apphub_application

val yojson_of_google_apphub_application :
  google_apphub_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  attributes : attributes list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  scope : scope list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  application_id:string prop ->
  location:string prop ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  application_id:string prop ->
  location:string prop ->
  project:string prop ->
  string ->
  t Tf_core.resource
