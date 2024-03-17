(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_network_interface_sg_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** aws_network_interface_sg_attachment__timeouts *)

type aws_network_interface_sg_attachment = {
  network_interface_id : string;  (** network_interface_id *)
  security_group_id : string;  (** security_group_id *)
  timeouts : aws_network_interface_sg_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_network_interface_sg_attachment *)

let aws_network_interface_sg_attachment ?timeouts
    ~network_interface_id ~security_group_id __resource_id =
  let __resource_type = "aws_network_interface_sg_attachment" in
  let __resource =
    { network_interface_id; security_group_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_network_interface_sg_attachment __resource);
  ()
