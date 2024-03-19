(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?key_id ~type_ __resource_id =
  let __resource_type = "aws_xray_encryption_config" in
  let __resource =
    aws_xray_encryption_config ?id ?key_id ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_encryption_config __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
