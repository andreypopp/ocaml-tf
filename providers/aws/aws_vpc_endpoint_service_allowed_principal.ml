(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~principal_arn ~vpc_endpoint_service_id __id =
  let __type = "aws_vpc_endpoint_service_allowed_principal" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal_arn = Prop.computed __type __id "principal_arn";
       vpc_endpoint_service_id =
         Prop.computed __type __id "vpc_endpoint_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_service_allowed_principal
        (aws_vpc_endpoint_service_allowed_principal ?id
           ~principal_arn ~vpc_endpoint_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal_arn ~vpc_endpoint_service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~principal_arn ~vpc_endpoint_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
