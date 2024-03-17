(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_resource = {
  id : string prop option; [@option]  (** id *)
  parent_id : string prop;  (** parent_id *)
  path_part : string prop;  (** path_part *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_resource *)

let aws_api_gateway_resource ?id ~parent_id ~path_part ~rest_api_id
    __resource_id =
  let __resource_type = "aws_api_gateway_resource" in
  let __resource = { id; parent_id; path_part; rest_api_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_resource __resource);
  ()
