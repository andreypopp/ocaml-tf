(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_api_key = {
  customer_id : string option; [@option]  (** customer_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_api_gateway_api_key *)

let aws_api_gateway_api_key ?customer_id ?description ?enabled ?tags
    ~name __resource_id =
  let __resource_type = "aws_api_gateway_api_key" in
  let __resource =
    { customer_id; description; enabled; name; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_api_key __resource);
  ()
