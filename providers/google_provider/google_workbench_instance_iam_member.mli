(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workbench_instance_iam_member__condition

type google_workbench_instance_iam_member

val google_workbench_instance_iam_member :
    ?id:string ->
    ?location:string ->
    ?project:string ->
    member:string ->
    name:string ->
    role:string ->
    condition:google_workbench_instance_iam_member__condition list ->
    string ->
    unit

