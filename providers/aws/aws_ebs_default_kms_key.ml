(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ebs_default_kms_key = {
  id : string prop option; [@option]  (** id *)
  key_arn : string prop;  (** key_arn *)
}
[@@deriving yojson_of]
(** aws_ebs_default_kms_key *)

let aws_ebs_default_kms_key ?id ~key_arn () : aws_ebs_default_kms_key
    =
  { id; key_arn }

type t = { id : string prop; key_arn : string prop }

let make ?id ~key_arn __id =
  let __type = "aws_ebs_default_kms_key" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_arn = Prop.computed __type __id "key_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_default_kms_key
        (aws_ebs_default_kms_key ?id ~key_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~key_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
