(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type backup_policy = { status : string prop  (** status *) }
[@@deriving yojson_of]
(** backup_policy *)

type aws_efs_backup_policy = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  backup_policy : backup_policy list;
}
[@@deriving yojson_of]
(** aws_efs_backup_policy *)

let backup_policy ~status () : backup_policy = { status }

let aws_efs_backup_policy ?id ~file_system_id ~backup_policy () :
    aws_efs_backup_policy =
  { file_system_id; id; backup_policy }

type t = { file_system_id : string prop; id : string prop }

let register ?tf_module ?id ~file_system_id ~backup_policy
    __resource_id =
  let __resource_type = "aws_efs_backup_policy" in
  let __resource =
    aws_efs_backup_policy ?id ~file_system_id ~backup_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_backup_policy __resource);
  let __resource_attributes =
    ({
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
