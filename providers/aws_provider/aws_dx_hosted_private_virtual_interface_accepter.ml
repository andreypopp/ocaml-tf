(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_hosted_private_virtual_interface_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_private_virtual_interface_accepter__timeouts *)

type aws_dx_hosted_private_virtual_interface_accepter = {
  dx_gateway_id : string prop option; [@option]  (** dx_gateway_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_interface_id : string prop;  (** virtual_interface_id *)
  vpn_gateway_id : string prop option; [@option]
      (** vpn_gateway_id *)
  timeouts :
    aws_dx_hosted_private_virtual_interface_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_private_virtual_interface_accepter *)

let aws_dx_hosted_private_virtual_interface_accepter ?dx_gateway_id
    ?id ?tags ?tags_all ?vpn_gateway_id ?timeouts
    ~virtual_interface_id __resource_id =
  let __resource_type =
    "aws_dx_hosted_private_virtual_interface_accepter"
  in
  let __resource =
    {
      dx_gateway_id;
      id;
      tags;
      tags_all;
      virtual_interface_id;
      vpn_gateway_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_private_virtual_interface_accepter
       __resource);
  ()
