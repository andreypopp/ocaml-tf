(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_vpc_link = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arns : string prop list;  (** target_arns *)
}
[@@deriving yojson_of]
(** aws_api_gateway_vpc_link *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arns : string list prop;
}

let aws_api_gateway_vpc_link ?description ?id ?tags ?tags_all ~name
    ~target_arns __resource_id =
  let __resource_type = "aws_api_gateway_vpc_link" in
  let __resource =
    ({ description; id; name; tags; tags_all; target_arns }
      : aws_api_gateway_vpc_link)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_vpc_link __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_arns =
         Prop.computed __resource_type __resource_id "target_arns";
     }
      : t)
  in
  __resource_attributes
