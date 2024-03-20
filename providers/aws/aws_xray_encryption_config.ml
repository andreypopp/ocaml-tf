(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_xray_encryption_config = {
  id : string prop option; [@option]  (** id *)
  key_id : string prop option; [@option]  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_xray_encryption_config *)

let aws_xray_encryption_config ?id ?key_id ~type_ () :
    aws_xray_encryption_config =
  { id; key_id; type_ }

type t = {
  id : string prop;
  key_id : string prop;
  type_ : string prop;
}

let make ?id ?key_id ~type_ __id =
  let __type = "aws_xray_encryption_config" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_encryption_config
        (aws_xray_encryption_config ?id ?key_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_id ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?key_id ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
