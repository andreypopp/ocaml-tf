(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_documentation_part__location = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  name : string prop option; [@option]  (** name *)
  path : string prop option; [@option]  (** path *)
  status_code : string prop option; [@option]  (** status_code *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part__location *)

type aws_api_gateway_documentation_part = {
  id : string prop option; [@option]  (** id *)
  properties : string prop;  (** properties *)
  rest_api_id : string prop;  (** rest_api_id *)
  location : aws_api_gateway_documentation_part__location list;
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part *)

let aws_api_gateway_documentation_part ?id ~properties ~rest_api_id
    ~location __resource_id =
  let __resource_type = "aws_api_gateway_documentation_part" in
  let __resource = { id; properties; rest_api_id; location } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_documentation_part __resource);
  ()
