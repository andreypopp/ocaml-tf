(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_arn : string prop;  (** resource_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_shield_protection *)

let aws_shield_protection ?id ?tags ?tags_all ~name ~resource_arn ()
    : aws_shield_protection =
  { id; name; resource_arn; tags; tags_all }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name ~resource_arn
    __resource_id =
  let __resource_type = "aws_shield_protection" in
  let __resource =
    aws_shield_protection ?id ?tags ?tags_all ~name ~resource_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
