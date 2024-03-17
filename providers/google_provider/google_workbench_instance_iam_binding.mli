(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workbench_instance_iam_binding__condition

type google_workbench_instance_iam_binding

val google_workbench_instance_iam_binding :
    ?id:string prop ->
    ?location:string prop ->
    ?project:string prop ->
    members:string prop list ->
    name:string prop ->
    role:string prop ->
    condition:google_workbench_instance_iam_binding__condition list ->
    string ->
    unit

