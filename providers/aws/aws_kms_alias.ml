(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kms_alias = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  target_key_id : string prop;  (** target_key_id *)
}
[@@deriving yojson_of]
(** aws_kms_alias *)

let aws_kms_alias ?id ?name ?name_prefix ~target_key_id () :
    aws_kms_alias =
  { id; name; name_prefix; target_key_id }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  target_key_arn : string prop;
  target_key_id : string prop;
}

let make ?id ?name ?name_prefix ~target_key_id __id =
  let __type = "aws_kms_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       target_key_arn = Prop.computed __type __id "target_key_arn";
       target_key_id = Prop.computed __type __id "target_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_alias
        (aws_kms_alias ?id ?name ?name_prefix ~target_key_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~target_key_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~target_key_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
