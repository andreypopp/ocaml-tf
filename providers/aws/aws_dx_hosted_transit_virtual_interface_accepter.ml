(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~dx_gateway_id
    ~virtual_interface_id __resource_id =
  let __resource_type =
    "aws_dx_hosted_transit_virtual_interface_accepter"
  in
  let __resource =
    aws_dx_hosted_transit_virtual_interface_accepter ?id ?tags
      ?tags_all ?timeouts ~dx_gateway_id ~virtual_interface_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_transit_virtual_interface_accepter
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       dx_gateway_id =
         Prop.computed __resource_type __resource_id "dx_gateway_id";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       virtual_interface_id =
         Prop.computed __resource_type __resource_id
           "virtual_interface_id";
     }
      : t)
  in
  __resource_attributes
