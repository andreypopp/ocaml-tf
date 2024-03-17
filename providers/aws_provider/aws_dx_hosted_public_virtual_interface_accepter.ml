(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dx_hosted_public_virtual_interface_accepter__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface_accepter__timeouts *)

type aws_dx_hosted_public_virtual_interface_accepter = {
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_interface_id : string;  (** virtual_interface_id *)
  timeouts :
    aws_dx_hosted_public_virtual_interface_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_dx_hosted_public_virtual_interface_accepter *)

let aws_dx_hosted_public_virtual_interface_accepter ?tags ?timeouts
    ~virtual_interface_id __resource_id =
  let __resource_type =
    "aws_dx_hosted_public_virtual_interface_accepter"
  in
  let __resource = { tags; virtual_interface_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_public_virtual_interface_accepter
       __resource);
  ()
