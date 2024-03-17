(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_documentation_part__location = {
  method_ : string option; [@option] [@key "method"]  (** method *)
  name : string option; [@option]  (** name *)
  path : string option; [@option]  (** path *)
  status_code : string option; [@option]  (** status_code *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part__location *)

type aws_api_gateway_documentation_part = {
  properties : string;  (** properties *)
  rest_api_id : string;  (** rest_api_id *)
  location : aws_api_gateway_documentation_part__location list;
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part *)

let aws_api_gateway_documentation_part ~properties ~rest_api_id
    ~location __resource_id =
  let __resource_type = "aws_api_gateway_documentation_part" in
  let __resource = { properties; rest_api_id; location } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_documentation_part __resource);
  ()
