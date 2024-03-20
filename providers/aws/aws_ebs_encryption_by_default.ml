(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ebs_encryption_by_default = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ebs_encryption_by_default *)

let aws_ebs_encryption_by_default ?enabled ?id () :
    aws_ebs_encryption_by_default =
  { enabled; id }

type t = { enabled : bool prop; id : string prop }

let make ?enabled ?id __id =
  let __type = "aws_ebs_encryption_by_default" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_encryption_by_default
        (aws_ebs_encryption_by_default ?enabled ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id __id =
  let (r : _ Tf_core.resource) = make ?enabled ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
