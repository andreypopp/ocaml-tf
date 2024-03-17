(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_internet_gateway_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_internet_gateway_attachment__timeouts *)

type aws_internet_gateway_attachment = {
  id : string prop option; [@option]  (** id *)
  internet_gateway_id : string prop;  (** internet_gateway_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : aws_internet_gateway_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_internet_gateway_attachment *)

type t = {
  id : string prop;
  internet_gateway_id : string prop;
  vpc_id : string prop;
}

let aws_internet_gateway_attachment ?id ?timeouts
    ~internet_gateway_id ~vpc_id __resource_id =
  let __resource_type = "aws_internet_gateway_attachment" in
  let __resource =
    ({ id; internet_gateway_id; vpc_id; timeouts }
      : aws_internet_gateway_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_internet_gateway_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       internet_gateway_id =
         Prop.computed __resource_type __resource_id
           "internet_gateway_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
