(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_endpoint_security_group_association = {
  replace_default_association : bool option; [@option]
      (** replace_default_association *)
  security_group_id : string;  (** security_group_id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_security_group_association *)

let aws_vpc_endpoint_security_group_association
    ?replace_default_association ~security_group_id ~vpc_endpoint_id
    __resource_id =
  let __resource_type =
    "aws_vpc_endpoint_security_group_association"
  in
  let __resource =
    {
      replace_default_association;
      security_group_id;
      vpc_endpoint_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_security_group_association __resource);
  ()
