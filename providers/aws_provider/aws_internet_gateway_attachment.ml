(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_internet_gateway_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_internet_gateway_attachment__timeouts *)

type aws_internet_gateway_attachment = {
  id : string option; [@option]  (** id *)
  internet_gateway_id : string;  (** internet_gateway_id *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_internet_gateway_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_internet_gateway_attachment *)

let aws_internet_gateway_attachment ?id ?timeouts
    ~internet_gateway_id ~vpc_id __resource_id =
  let __resource_type = "aws_internet_gateway_attachment" in
  let __resource = { id; internet_gateway_id; vpc_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_internet_gateway_attachment __resource);
  ()
