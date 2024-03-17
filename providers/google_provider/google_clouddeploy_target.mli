(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_clouddeploy_target__anthos_cluster
type google_clouddeploy_target__execution_configs
type google_clouddeploy_target__gke
type google_clouddeploy_target__multi_target
type google_clouddeploy_target__run
type google_clouddeploy_target__timeouts
type google_clouddeploy_target

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  deploy_parameters : (string * string) list prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  require_approval : bool prop;
  target_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val google_clouddeploy_target :
  ?annotations:(string * string prop) list ->
  ?deploy_parameters:(string * string prop) list ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?require_approval:bool prop ->
  ?timeouts:google_clouddeploy_target__timeouts ->
  location:string prop ->
  name:string prop ->
  anthos_cluster:google_clouddeploy_target__anthos_cluster list ->
  execution_configs:google_clouddeploy_target__execution_configs list ->
  gke:google_clouddeploy_target__gke list ->
  multi_target:google_clouddeploy_target__multi_target list ->
  run:google_clouddeploy_target__run list ->
  string ->
  t
