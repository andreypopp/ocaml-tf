(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~name __id =
  let __type = "aws_route53recoverycontrolconfig_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_endpoints =
         Prop.computed __type __id "cluster_endpoints";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoverycontrolconfig_cluster
        (aws_route53recoverycontrolconfig_cluster ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
