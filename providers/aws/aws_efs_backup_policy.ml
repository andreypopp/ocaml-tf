(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~file_system_id ~backup_policy __id =
  let __type = "aws_efs_backup_policy" in
  let __attrs =
    ({
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_backup_policy
        (aws_efs_backup_policy ?id ~file_system_id ~backup_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~file_system_id ~backup_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~file_system_id ~backup_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
