(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_api_key = {
  customer_id : string option; [@option]  (** customer_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_api_gateway_api_key *)

let aws_api_gateway_api_key ?customer_id ?description ?enabled ?id
    ?tags ?tags_all ?value ~name __resource_id =
  let __resource_type = "aws_api_gateway_api_key" in
  let __resource =
    {
      customer_id;
      description;
      enabled;
      id;
      name;
      tags;
      tags_all;
      value;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_api_key __resource);
  ()
