(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_dx_hosted_transit_virtual_interface_accepter = {
  dx_gateway_id : string prop;  (** dx_gateway_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_interface_id : string prop;  (** virtual_interface_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_transit_virtual_interface_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_hosted_transit_virtual_interface_accepter ?id ?tags
    ?tags_all ?timeouts ~dx_gateway_id ~virtual_interface_id () :
    aws_dx_hosted_transit_virtual_interface_accepter =
  {
    dx_gateway_id;
    id;
    tags;
    tags_all;
    virtual_interface_id;
    timeouts;
  }

type t = {
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_interface_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~dx_gateway_id
    ~virtual_interface_id __id =
  let __type = "aws_dx_hosted_transit_virtual_interface_accepter" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       virtual_interface_id =
         Prop.computed __type __id "virtual_interface_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_hosted_transit_virtual_interface_accepter
        (aws_dx_hosted_transit_virtual_interface_accepter ?id ?tags
           ?tags_all ?timeouts ~dx_gateway_id ~virtual_interface_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~dx_gateway_id
    ~virtual_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~dx_gateway_id
      ~virtual_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
