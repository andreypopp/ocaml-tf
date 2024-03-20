(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_endpoint_connection_accepter = {
  id : string prop option; [@option]  (** id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_endpoint_service_id : string prop;
      (** vpc_endpoint_service_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_connection_accepter *)

let aws_vpc_endpoint_connection_accepter ?id ~vpc_endpoint_id
    ~vpc_endpoint_service_id () :
    aws_vpc_endpoint_connection_accepter =
  { id; vpc_endpoint_id; vpc_endpoint_service_id }

type t = {
  id : string prop;
  vpc_endpoint_id : string prop;
  vpc_endpoint_service_id : string prop;
  vpc_endpoint_state : string prop;
}

let make ?id ~vpc_endpoint_id ~vpc_endpoint_service_id __id =
  let __type = "aws_vpc_endpoint_connection_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
       vpc_endpoint_service_id =
         Prop.computed __type __id "vpc_endpoint_service_id";
       vpc_endpoint_state =
         Prop.computed __type __id "vpc_endpoint_state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_endpoint_connection_accepter
        (aws_vpc_endpoint_connection_accepter ?id ~vpc_endpoint_id
           ~vpc_endpoint_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vpc_endpoint_id ~vpc_endpoint_service_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~vpc_endpoint_id ~vpc_endpoint_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
