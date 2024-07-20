(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type workload_properties = {
  gcp_project : string prop;  (** gcp_project *)
  location : string prop;  (** location *)
  zone : string prop;  (** zone *)
}

type workload_reference = { uri : string prop  (** uri *) }
type attributes__business_owners

val attributes__business_owners :
  ?display_name:string prop ->
  email:string prop ->
  unit ->
  attributes__business_owners

type attributes__criticality

val attributes__criticality :
  type_:string prop -> unit -> attributes__criticality

type attributes__developer_owners

val attributes__developer_owners :
  ?display_name:string prop ->
  email:string prop ->
  unit ->
  attributes__developer_owners

type attributes__environment

val attributes__environment :
  type_:string prop -> unit -> attributes__environment

type attributes__operator_owners

val attributes__operator_owners :
  ?display_name:string prop ->
  email:string prop ->
  unit ->
  attributes__operator_owners

type attributes

val attributes :
  ?business_owners:attributes__business_owners list ->
  ?criticality:attributes__criticality list ->
  ?developer_owners:attributes__developer_owners list ->
  ?environment:attributes__environment list ->
  ?operator_owners:attributes__operator_owners list ->
  unit ->
  attributes

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apphub_workload

val google_apphub_workload :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  discovered_workload:string prop ->
  location:string prop ->
  workload_id:string prop ->
  unit ->
  google_apphub_workload

val yojson_of_google_apphub_workload : google_apphub_workload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  create_time : string prop;
  description : string prop;
  discovered_workload : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_id : string prop;
  workload_properties : workload_properties list prop;
  workload_reference : workload_reference list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  discovered_workload:string prop ->
  location:string prop ->
  workload_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?attributes:attributes list ->
  ?timeouts:timeouts ->
  application_id:string prop ->
  discovered_workload:string prop ->
  location:string prop ->
  workload_id:string prop ->
  string ->
  t Tf_core.resource
