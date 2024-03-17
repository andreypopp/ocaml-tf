(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_vpc_link = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_vpc_link *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_apigatewayv2_vpc_link ?id ?tags ?tags_all ~name
    ~security_group_ids ~subnet_ids __resource_id =
  let __resource_type = "aws_apigatewayv2_vpc_link" in
  let __resource =
    ({ id; name; security_group_ids; subnet_ids; tags; tags_all }
      : aws_apigatewayv2_vpc_link)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_vpc_link __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
