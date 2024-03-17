(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_workbench_instance_iam_member__condition

type google_workbench_instance_iam_member

val google_workbench_instance_iam_member :
    ?id:string prop ->
    ?location:string prop ->
    ?project:string prop ->
    member:string prop ->
    name:string prop ->
    role:string prop ->
    condition:google_workbench_instance_iam_member__condition list ->
    string ->
    unit

