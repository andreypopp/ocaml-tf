(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_global_settings = {
  global_settings : (string * string prop) list;
      (** global_settings *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_backup_global_settings *)

let aws_backup_global_settings ?id ~global_settings () :
    aws_backup_global_settings =
  { global_settings; id }

type t = {
  global_settings : (string * string) list prop;
  id : string prop;
}

let make ?id ~global_settings __id =
  let __type = "aws_backup_global_settings" in
  let __attrs =
    ({
       global_settings = Prop.computed __type __id "global_settings";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_global_settings
        (aws_backup_global_settings ?id ~global_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~global_settings __id =
  let (r : _ Tf_core.resource) = make ?id ~global_settings __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
