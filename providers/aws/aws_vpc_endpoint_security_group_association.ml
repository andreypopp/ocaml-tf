(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_security_group_association = {
  id : string prop option; [@option]  (** id *)
  replace_default_association : bool prop option; [@option]
      (** replace_default_association *)
  security_group_id : string prop;  (** security_group_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_security_group_association *)

let aws_vpc_endpoint_security_group_association ?id
    ?replace_default_association ~security_group_id ~vpc_endpoint_id
    () : aws_vpc_endpoint_security_group_association =
  {
    id;
    replace_default_association;
    security_group_id;
    vpc_endpoint_id;
  }

type t = {
  id : string prop;
  replace_default_association : bool prop;
  security_group_id : string prop;
  vpc_endpoint_id : string prop;
}

let register ?tf_module ?id ?replace_default_association
    ~security_group_id ~vpc_endpoint_id __resource_id =
  let __resource_type =
    "aws_vpc_endpoint_security_group_association"
  in
  let __resource =
    aws_vpc_endpoint_security_group_association ?id
      ?replace_default_association ~security_group_id
      ~vpc_endpoint_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_security_group_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       replace_default_association =
         Prop.computed __resource_type __resource_id
           "replace_default_association";
       security_group_id =
         Prop.computed __resource_type __resource_id
           "security_group_id";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
     }
      : t)
  in
  __resource_attributes
