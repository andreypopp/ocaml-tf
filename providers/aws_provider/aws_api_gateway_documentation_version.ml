(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_documentation_version = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  rest_api_id : string prop;  (** rest_api_id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_version *)

let aws_api_gateway_documentation_version ?description ?id
    ~rest_api_id ~version __resource_id =
  let __resource_type = "aws_api_gateway_documentation_version" in
  let __resource = { description; id; rest_api_id; version } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_documentation_version __resource);
  ()
