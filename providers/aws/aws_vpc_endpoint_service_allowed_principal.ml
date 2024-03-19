(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_service_allowed_principal = {
  id : string prop option; [@option]  (** id *)
  principal_arn : string prop;  (** principal_arn *)
  vpc_endpoint_service_id : string prop;
      (** vpc_endpoint_service_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_service_allowed_principal *)

let aws_vpc_endpoint_service_allowed_principal ?id ~principal_arn
    ~vpc_endpoint_service_id () :
    aws_vpc_endpoint_service_allowed_principal =
  { id; principal_arn; vpc_endpoint_service_id }

type t = {
  id : string prop;
  principal_arn : string prop;
  vpc_endpoint_service_id : string prop;
}

let register ?tf_module ?id ~principal_arn ~vpc_endpoint_service_id
    __resource_id =
  let __resource_type =
    "aws_vpc_endpoint_service_allowed_principal"
  in
  let __resource =
    aws_vpc_endpoint_service_allowed_principal ?id ~principal_arn
      ~vpc_endpoint_service_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_service_allowed_principal __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       principal_arn =
         Prop.computed __resource_type __resource_id "principal_arn";
       vpc_endpoint_service_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_service_id";
     }
      : t)
  in
  __resource_attributes
