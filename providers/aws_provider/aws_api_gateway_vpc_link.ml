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

let aws_api_gateway_vpc_link ?description ?id ?tags ?tags_all ~name
    ~target_arns __resource_id =
  let __resource_type = "aws_api_gateway_vpc_link" in
  let __resource =
    { description; id; name; tags; tags_all; target_arns }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_vpc_link __resource);
  ()
