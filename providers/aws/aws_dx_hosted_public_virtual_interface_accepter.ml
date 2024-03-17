(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_hosted_public_virtual_interface_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface_accepter__timeouts *)

type aws_dx_hosted_public_virtual_interface_accepter = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_interface_id : string prop;  (** virtual_interface_id *)
  timeouts :
    aws_dx_hosted_public_virtual_interface_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface_accepter *)

type t = {
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  virtual_interface_id : string prop;
}

let aws_dx_hosted_public_virtual_interface_accepter ?id ?tags
    ?tags_all ?timeouts ~virtual_interface_id __resource_id =
  let __resource_type =
    "aws_dx_hosted_public_virtual_interface_accepter"
  in
  let __resource =
    ({ id; tags; tags_all; virtual_interface_id; timeouts }
      : aws_dx_hosted_public_virtual_interface_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_public_virtual_interface_accepter
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
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
