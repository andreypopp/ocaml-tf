(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cluster_endpoints = {
  endpoint : string prop;  (** endpoint *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]

type aws_route53recoverycontrolconfig_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_cluster *)

let aws_route53recoverycontrolconfig_cluster ?id ~name () :
    aws_route53recoverycontrolconfig_cluster =
  { id; name }

type t = {
  arn : string prop;
  cluster_endpoints : cluster_endpoints list prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let register ?tf_module ?id ~name __resource_id =
  let __resource_type = "aws_route53recoverycontrolconfig_cluster" in
  let __resource =
    aws_route53recoverycontrolconfig_cluster ?id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_endpoints =
         Prop.computed __resource_type __resource_id
           "cluster_endpoints";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
